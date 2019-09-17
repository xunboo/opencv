// This file is part of OpenCV project.
// It is subject to the license terms in the LICENSE file found in the top-level directory
// of this distribution and at http://opencv.org/license.html.

#ifndef OPENCV_DNN_CUDA4DNN_CSL_TENSOR_OPS_HPP
#define OPENCV_DNN_CUDA4DNN_CSL_TENSOR_OPS_HPP

#include "stream.hpp"
#include "tensor.hpp"
#include "kernels.hpp"
#include "pointer.hpp"
#include "cublas.hpp"
#include "cudnn.hpp"
#include "workspace.hpp"

#include "cudnn/convolution.hpp"
#include "cudnn/pooling.hpp"
#include "cudnn/lrn.hpp"
#include "cudnn/softmax.hpp"
#include "cudnn/transform.hpp"
#include "cudnn/transpose_convolution.hpp"

#include <opencv2/core.hpp>

#include <cstddef>
#include <array>
#include <vector>
#include <algorithm>

namespace cv { namespace dnn { namespace cuda4dnn { namespace csl {

    namespace tensor_ops {

        /** @brief copies data between tensors
         *
         * Pre-conditions:
         * - \p dest and \p src must have the same shape
         *
         * Exception Gaurantee: Basic
         */
        template <class T> inline
        void copy(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            if (dest.get() != src.get())
                memcpy(dest.get(), src.get(), dest.size(), stream);
        }

        /** @brief permutes the dimensions of a tensor
         *
         * Pre-conditions:
         * - \p dest and \p src must have the same number of elements
         *
         * Exception Gaurantee: Basic
         */
        template <class T> inline
        void permute(const Stream& stream, TensorSpan<T> dest, TensorView<T> src, const std::vector<int>& order_) {
            std::vector<std::size_t> order;
            for (const auto& sz : order_)
                order.push_back(clamp_axis(sz, src.rank()));
            csl::kernels::permute(stream, dest, src, order);
        }

        /** @brief performs generalized matrix-multiplication
         *
         * Pre-conditions:
         * - \p A and \p B must meet the mathematical requirements for matrix multiplication
         * - \p result must be large enough to hold the result
         *
         * Exception Gaurantee: Basic
         */
        template <class T> inline
        void gemm(const cublas::Handle& handle, T beta, TensorSpan<T> result, T alpha, bool transa, TensorView<T> A, bool transb, TensorView<T> B) {
            /* matrix operations can be performed only on rank two or less tensors */
            CV_Assert(get_effective_rank(A) <= 2 &&
                get_effective_rank(B) <= 2 &&
                get_effective_rank(result) <= 2);

            /* check dimension requirements for matrix multiplication */
            if (!transa && !transb) {
                CV_Assert(A.get_axis_size(-2) == result.get_axis_size(-2));
                CV_Assert(A.get_axis_size(-1) == B.get_axis_size(-2));
                CV_Assert(B.get_axis_size(-1) == result.get_axis_size(-1));
            } else if (!transa && transb) {
                CV_Assert(A.get_axis_size(-2) == result.get_axis_size(-2));
                CV_Assert(A.get_axis_size(-1) == B.get_axis_size(-1));
                CV_Assert(B.get_axis_size(-2) == result.get_axis_size(-1));
            } else if (transa && !transb) {
                CV_Assert(A.get_axis_size(-1) == result.get_axis_size(-2));
                CV_Assert(A.get_axis_size(-2) == B.get_axis_size(-2));
                CV_Assert(B.get_axis_size(-1) == result.get_axis_size(-1));
            } else {
                CV_Assert(A.get_axis_size(-1) == result.get_axis_size(-2));
                CV_Assert(A.get_axis_size(-2) == B.get_axis_size(-1));
                CV_Assert(B.get_axis_size(-2) == result.get_axis_size(-1));
            }

            const auto result_nr = result.get_axis_size(-2);
            const auto result_nc = result.get_axis_size(-1);
            const auto common_dim = A.get_axis_size(transa ? -2 : -1);
            const auto A_nc = A.get_axis_size(-1);
            const auto B_nc = B.get_axis_size(-1);

            /* tensors are stored in row-major but cublas::gemm operates on column-major matrices
             * a row-major matrix when read as column-major matrix gives the transpose of the intended matrix
             *
             * Required: C = AB
             * what cuBLAS sees: C^T = A^TB^T = (BA)^T
             *
             * By reversing operands, we effectively perform:
             * C^T = B^TA^T = (AB)^T
             *
             * which gives C = AB
             */
            cublas::gemm<T>(handle,
                transb, transa,
                result_nc, result_nr, common_dim,
                alpha, B.get(), B_nc,
                A.get(), A_nc,
                beta, result.get(), result_nc);
        }

        /** @brief performs element-wise addition with broadcasting
         *
         * Pre-conditions:
         * - \p A and \p C must be compatible tensors
         *
         * Exception Gaurantee: Basic
         */
        template <class T> inline
        void add(const cudnn::Handle& handle, T beta, TensorSpan<T> C, T alpha, TensorView<T> A) {
            CV_Assert(is_shape_compatible(A, C));

            using cudnn::TensorDescriptor;
            auto aDesc = TensorDescriptor<T>(A.shape());
            auto cDesc = TensorDescriptor<T>(C.shape());
            cudnn::add(handle, alpha, aDesc, A.get(), beta, cDesc, C.get());
        }

        /** @brief performs element-wise addition with broadcasting
         *
         * Pre-conditions:
         * - \p A and \p result must be compatible tensors
         *
         * Exception Gaurantee: Basic
         */
        template <class T> inline
        void softmax(const cudnn::Handle& handle, TensorSpan<T> output, TensorView<T> input, int channel_axis, bool log) {
            CV_Assert(is_shape_same(output, input));

            channel_axis = clamp_axis(channel_axis, input.rank());

            std::size_t outer_size = input.size_range(0, channel_axis);
            auto channel_size = input.get_axis_size(channel_axis);
            std::size_t inner_size = input.size_range(channel_axis + 1, input.rank());

            std::array<std::size_t, 4> shape = { outer_size, channel_size, 1, inner_size };

            using cudnn::TensorDescriptor;
            auto inputDesc = TensorDescriptor<T>(shape);
            auto outputDesc = TensorDescriptor<T>(shape);
            cudnn::softmax(handle, outputDesc, output.get(), inputDesc, input.get(), log);
        }

        template <class T> inline
        void abs(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            kernels::abs<T>(stream, dest, src);
        }

        template <class T> inline
        void bnll(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            kernels::bnll<T>(stream, dest, src);
        }

        template <class T> inline
        void relu(const Stream& stream, TensorSpan<T> dest, TensorView<T> src, T slope = 0) {
            CV_Assert(is_shape_same(dest, src));
            kernels::relu<T>(stream, dest, src, slope);
        }

        template <class T> inline
        void clipped_relu(const Stream& stream, TensorSpan<T> dest, TensorView<T> src, T min, T max) {
            CV_Assert(is_shape_same(dest, src));
            kernels::clipped_relu<T>(stream, dest, src, min, max);
        }

        template <class T> inline
        void channelwise_relu(const Stream& stream, TensorSpan<T> dest, TensorView<T> src, TensorView<T> slope) {
            CV_Assert(is_shape_same(dest, src));
            CV_Assert(src.get_axis_size(1) == slope.size());
            std::size_t inner_size = src.size_range(2, src.rank());
            kernels::axiswise_relu<T>(stream, dest, src, slope, inner_size);
        }

        template <class T> inline
        void elu(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            kernels::elu<T>(stream, dest, src);
        }

        template <class T> inline
        void power(const Stream& stream, TensorSpan<T> dest, TensorView<T> src, T exp = 1, T scale = 1, T shift = 0) {
            CV_Assert(is_shape_same(dest, src));
            kernels::power<T>(stream, dest, src, exp, scale, shift);
        }

        template <class T> inline
        void sigmoid(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            kernels::sigmoid<T>(stream, dest, src);
        }

        template <class T> inline
        void tanh(const Stream& stream, TensorSpan<T> dest, TensorView<T> src) {
            CV_Assert(is_shape_same(dest, src));
            kernels::tanh<T>(stream, dest, src);
        }
    }

    template <class T>
    class Convolution {
        using TensorDescriptor = cudnn::TensorDescriptor<T>;
        using FilterDescriptor = cudnn::FilterDescriptor<T>;
        using ConvolutionDescriptor = cudnn::ConvolutionDescriptor<T>;
        using ConvolutionAlgorithm = cudnn::ConvolutionAlgorithm<T>;

    public:
        struct params_type {
            std::vector<std::size_t> input_shape;
            std::vector<std::size_t> filter_shape;

            std::vector<std::size_t> padding;
            std::vector<std::size_t> stride;
            std::vector<std::size_t> dialation;

            std::size_t groups;
        };

        Convolution() = default;
        Convolution(const Convolution&) = delete;
        Convolution(Convolution&&) = default;
        Convolution(cudnn::Handle handle, const params_type& params) {
            cudnnHandle = std::move(handle);

            inputTensorDesc = TensorDescriptor(params.input_shape);
            filterDesc = FilterDescriptor(params.filter_shape);
            convDesc = ConvolutionDescriptor(params.padding, params.stride, params.dialation, params.groups);

            std::vector<int> output_dims;
            getConvolutionForwardOutputDim(convDesc, filterDesc, inputTensorDesc, output_dims);
            outputTensorDesc = TensorDescriptor(output_dims);

            algo = ConvolutionAlgorithm(cudnnHandle, convDesc, filterDesc, inputTensorDesc, outputTensorDesc);
        }

        Convolution& operator=(const Convolution&) = delete;
        Convolution& operator=(Convolution&&) = default;

        std::size_t get_workspace_size() const noexcept {
            return algo.get_workspace_size();
        }

        void convolve(TensorSpan<T> output, TensorView<T> input, TensorView<T> filters, WorkspaceInstance scratchpad) {
            cudnn::convolve<T>(
                cudnnHandle,
                convDesc, algo, scratchpad,
                filterDesc, filters.get(),
                inputTensorDesc, input.get(),
                1.0, 0.0, outputTensorDesc, output.get()
            );
        }

    private:
        cudnn::Handle cudnnHandle;
        TensorDescriptor inputTensorDesc, outputTensorDesc;
        FilterDescriptor filterDesc;
        ConvolutionDescriptor convDesc;
        ConvolutionAlgorithm algo;
    };

    template <class T>
    class TransposeConvolution {
        using TensorDescriptor = cudnn::TensorDescriptor<T>;
        using FilterDescriptor = cudnn::FilterDescriptor<T>;
        using ConvolutionDescriptor = cudnn::ConvolutionDescriptor<T>;
        using TransposeConvolutionAlgorithm = cudnn::TransposeConvolutionAlgorithm<T>;

    public:
        struct params_type {
            std::vector<std::size_t> input_shape;
            std::vector<std::size_t> output_shape;

            std::vector<std::size_t> filter_shape;

            std::vector<std::size_t> padding;
            std::vector<std::size_t> stride;
            std::vector<std::size_t> dialation;

            std::size_t groups;
        };

        TransposeConvolution() = default;
        TransposeConvolution(const TransposeConvolution&) = delete;
        TransposeConvolution(TransposeConvolution&&) = default;
        TransposeConvolution(cudnn::Handle handle, const params_type& params) {
            cudnnHandle = std::move(handle);

            filterDesc = FilterDescriptor(params.filter_shape);
            convDesc = ConvolutionDescriptor(params.padding, params.stride, params.dialation, params.groups);

            /* input_shape is the output shape for convolution
             * output_shape is the input shape for convolution
             */
            convInputTensorDesc = TensorDescriptor(params.output_shape);

            std::vector<int> conv_output_dims;
            getConvolutionForwardOutputDim(convDesc, filterDesc, convInputTensorDesc, conv_output_dims);

            /* the convolution output must be identical to what cuDNN expects */
            CV_Assert(std::equal(std::begin(conv_output_dims), std::end(conv_output_dims), std::begin(params.input_shape)));

            convOutputTensorDesc = TensorDescriptor(params.input_shape);

            algo = TransposeConvolutionAlgorithm(cudnnHandle, convDesc, filterDesc, convOutputTensorDesc, convInputTensorDesc);
        }

        TransposeConvolution& operator=(const TransposeConvolution&) = delete;
        TransposeConvolution& operator=(TransposeConvolution&&) = default;

        std::size_t get_workspace_size() const noexcept {
            return algo.get_workspace_size();
        }

        void transpose_convolve(TensorSpan<T> output, TensorView<T> input, TensorView<T> filters, WorkspaceInstance scratchpad) {
            cudnn::transpose_convolve<T>(
                cudnnHandle,
                convDesc, algo, scratchpad,
                filterDesc, filters.get(),
                convOutputTensorDesc, input.get(),
                1.0, 0.0, convInputTensorDesc, output.get()
            );
        }

    private:
        cudnn::Handle cudnnHandle;
        TensorDescriptor convInputTensorDesc, convOutputTensorDesc;
        FilterDescriptor filterDesc;
        ConvolutionDescriptor convDesc;
        TransposeConvolutionAlgorithm algo;
    };

    template <class T>
    class Pooling {
        using TensorDescriptor = cudnn::TensorDescriptor<T>;
        using PoolingDescriptor = cudnn::PoolingDescriptor;

    public:
        using pooling_type = PoolingDescriptor::pooling_type;

        struct params_type {
            std::vector<std::size_t> input_shape;
            std::vector<std::size_t> output_shape;

            std::vector<std::size_t> window_size;
            std::vector<std::size_t> padding;
            std::vector<std::size_t> stride;

            pooling_type type;
        };

        Pooling() = default;
        Pooling(const Pooling&) = delete;
        Pooling(Pooling&&) = default;
        Pooling(cudnn::Handle handle, const params_type& params) {
            cudnnHandle = std::move(handle);

            inputTensorDesc = TensorDescriptor(params.input_shape);
            poolingDesc = PoolingDescriptor(params.window_size, params.padding, params.stride, params.type);

            //std::vector<int> output_dim;
            //getPoolingForwardOutputDim(poolingDesc, inputTensorDesc, output_dim);
            outputTensorDesc = TensorDescriptor(params.output_shape);
        }

        Pooling& operator=(const Pooling&) = delete;
        Pooling& operator=(Pooling&&) = default;

        void pool(TensorView<T> input, TensorSpan<T> output) {
            cudnn::pool<T>(
                cudnnHandle,
                poolingDesc,
                inputTensorDesc, input.get(),
                1.0, 0.0, outputTensorDesc, output.get()
            );
        }

    private:
        cudnn::Handle cudnnHandle;
        TensorDescriptor inputTensorDesc, outputTensorDesc;
        PoolingDescriptor poolingDesc;
    };

    template <class T>
    class LRN {
        using LRNDescriptor = cudnn::LRNDescriptor;
        using TensorDescriptor = cudnn::TensorDescriptor<T>;

    public:
        using lrn_type = LRNDescriptor::lrn_type;

        LRN() = default;
        LRN(const LRN&) = delete;
        LRN(LRN&&) = default;
        LRN(cudnn::Handle handle, std::size_t local_size, double alpha, double beta, double k, lrn_type type) {
            cudnnHandle = std::move(handle);
            lrnDesc = LRNDescriptor(local_size, alpha, beta, k, type);
        }

        LRN& operator=(const LRN&) = delete;
        LRN& operator=(LRN&&) = default;

        void normalize(TensorView<T> input, TensorSpan<T> output, WorkspaceInstance workspace) {
            cudnn::LRNForward<T>(
                cudnnHandle,
                lrnDesc,
                TensorDescriptor(input.shape_as_vector()), input.get(),
                1.0, 0.0, TensorDescriptor(output.shape_as_vector()), output.get(),
                workspace
            );
        }

    private:
        cudnn::Handle cudnnHandle;
        LRNDescriptor lrnDesc;
    };

    template <class T>
    class TensorTransform {
        using TensorTransformDescriptor = cudnn::TensorTransformDescriptor;
        using TensorDescriptor = cudnn::TensorDescriptor<T>;

    public:
        TensorTransform() = default;
        TensorTransform(const TensorTransform&) = delete;
        TensorTransform(TensorTransform&&) = default;

        template <class SequenceContainer>
        TensorTransform(cudnn::Handle handle, const SequenceContainer& paddingLeft, const SequenceContainer& paddingRight) {
            cudnnHandle = std::move(handle);
            transDesc = TensorTransformDescriptor(paddingLeft, paddingRight);
        }

        TensorTransform& operator=(const TensorTransform&) = delete;
        TensorTransform& operator=(TensorTransform&&) = default;

        void transform(TensorView<T> input, TensorSpan<T> output) {
            cudnn::transform<T>(
                cudnnHandle,
                transDesc,
                TensorDescriptor(input.shape_as_vector()), input.get(),
                TensorDescriptor(output.shape_as_vector()), output.get()
            );
        }

    private:
        cudnn::Handle cudnnHandle;
        TensorTransformDescriptor transDesc;
    };

}}}} /* namespace cv::dnn::cuda4dnn::csl */

#endif /* OPENCV_DNN_CUDA4DNN_CSL_TENSOR_OPS_HPP */
