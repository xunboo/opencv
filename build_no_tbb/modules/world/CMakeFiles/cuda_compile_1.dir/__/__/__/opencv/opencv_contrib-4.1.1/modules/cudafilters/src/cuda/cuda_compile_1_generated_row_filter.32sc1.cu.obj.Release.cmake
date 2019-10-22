#  James Bigler, NVIDIA Corp (nvidia.com - jbigler)
#
#  Copyright (c) 2008 - 2009 NVIDIA Corporation.  All rights reserved.
#
#  This code is licensed under the MIT License.  See the FindCUDA.cmake script
#  for the text of the license.

# The MIT License
#
# License for the specific language governing rights and limitations under
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.


##########################################################################
# This file runs the nvcc commands to produce the desired output file along with
# the dependency file needed by CMake to compute dependencies.  In addition the
# file checks the output of each command and if the command fails it deletes the
# output files.

# Input variables
#
# verbose:BOOL=<>          OFF: Be as quiet as possible (default)
#                          ON : Describe each step
#
# build_configuration:STRING=<> Typically one of Debug, MinSizeRel, Release, or
#                               RelWithDebInfo, but it should match one of the
#                               entries in CUDA_HOST_FLAGS. This is the build
#                               configuration used when compiling the code.  If
#                               blank or unspecified Debug is assumed as this is
#                               what CMake does.
#
# generated_file:STRING=<> File to generate.  This argument must be passed in.
#
# generated_cubin_file:STRING=<> File to generate.  This argument must be passed
#                                                   in if build_cubin is true.

cmake_policy(PUSH)
cmake_policy(SET CMP0007 NEW)
if(NOT generated_file)
  message(FATAL_ERROR "You must specify generated_file on the command line")
endif()

# Set these up as variables to make reading the generated file easier
set(CMAKE_COMMAND "C:/Program Files/CMake/bin/cmake.exe") # path
set(source_file "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/row_filter.32sc1.cu") # path
set(NVCC_generated_dependency_file "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/CMakeFiles/cuda_compile_1.dir/__/__/__/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/cuda_compile_1_generated_row_filter.32sc1.cu.obj.NVCC-depend") # path
set(cmake_dependency_file "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/CMakeFiles/cuda_compile_1.dir/__/__/__/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/cuda_compile_1_generated_row_filter.32sc1.cu.obj.depend") # path
set(CUDA_make2cmake "C:/Program Files/CMake/share/cmake-3.15/Modules/FindCUDA/make2cmake.cmake") # path
set(CUDA_parse_cubin "C:/Program Files/CMake/share/cmake-3.15/Modules/FindCUDA/parse_cubin.cmake") # path
set(build_cubin ON) # bool
set(CUDA_HOST_COMPILER "$(VCInstallDir)Tools/MSVC/$(VCToolsVersion)/bin/Host$(Platform)/$(PlatformTarget)") # path
# We won't actually use these variables for now, but we need to set this, in
# order to force this file to be run again if it changes.
set(generated_file_path "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/CMakeFiles/cuda_compile_1.dir/__/__/__/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/$(Configuration)") # path
set(generated_file_internal "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/CMakeFiles/cuda_compile_1.dir/__/__/__/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/$(Configuration)/cuda_compile_1_generated_row_filter.32sc1.cu.obj") # path
set(generated_cubin_file_internal "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/CMakeFiles/cuda_compile_1.dir/__/__/__/opencv/opencv_contrib-4.1.1/modules/cudafilters/src/cuda/$(Configuration)/cuda_compile_1_generated_row_filter.32sc1.cu.obj.cubin.txt") # path

set(CUDA_NVCC_EXECUTABLE "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.1/bin/nvcc.exe") # path
set(CUDA_NVCC_FLAGS -gencode;arch=compute_60,code=sm_60;-gencode;arch=compute_61,code=sm_61;-gencode;arch=compute_70,code=sm_70;-gencode;arch=compute_75,code=sm_75;-D_FORCE_INLINES;--use_fast_math;-Xcompiler;-DCVAPI_EXPORTS ;; ) # list
# Build specific configuration flags
set(CUDA_NVCC_FLAGS_DEBUG  ; )
set(CUDA_NVCC_FLAGS_RELEASE  ; )
set(CUDA_NVCC_FLAGS_RELWITHDEBINFO  ; )
set(CUDA_NVCC_FLAGS_MINSIZEREL  ; )
set(nvcc_flags -m64) # list
set(CUDA_NVCC_INCLUDE_DIRS "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.1/include;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/NVIDIAOpticalFlowSDK_1_0_Headers/NVIDIAOpticalFlowSDK-79c6cee80a2df9a196f20afd6b598a9810964c32;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv_cuda4dnn/3rdparty/quirc/include;C:/Source/opencv_cuda4dnn/3rdparty/libjasper;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/libtiff;C:/Source/opencv_cuda4dnn/3rdparty/libtiff;C:/Source/opencv_cuda4dnn/3rdparty/libpng;C:/Source/opencv_cuda4dnn/3rdparty/libwebp/src;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/libjpeg-turbo;C:/Source/opencv_cuda4dnn/3rdparty/libjpeg-turbo/src;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/zlib;C:/Source/opencv_cuda4dnn/3rdparty/zlib;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/ippicv/ippicv_win/icv/include;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/ippicv/ippicv_win/iw/include;C:/Source/opencv_cuda4dnn/build_no_tbb;C:/Program Files (x86)/IntelSWTools/compilers_and_libraries_2019.5.281/windows/mkl/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/3rdparty/zlib;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/zlib;C:/Source/opencv_cuda4dnn/3rdparty/include/opencl/1.2;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/3rdparty/ittnotify/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/plot/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/dnn/misc/caffe;C:/Source/opencv_cuda4dnn/modules/dnn/misc/tensorflow;C:/Source/opencv_cuda4dnn/modules/dnn/misc/onnx;C:/Source/opencv_cuda4dnn/3rdparty/include/opencl/1.2;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.1/include;C:/Source/cudnn-10.1-windows10-x64-v7.6.4.38/cuda/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/hfs/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/3rdparty/openexr/Half;C:/Source/opencv_cuda4dnn/3rdparty/openexr/Iex;C:/Source/opencv_cuda4dnn/3rdparty/openexr/IlmThread;C:/Source/opencv_cuda4dnn/3rdparty/openexr/Imath;C:/Source/opencv_cuda4dnn/3rdparty/openexr/IlmImf;C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/openexr;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/line_descriptor/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/photo/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/saliency/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv_cuda4dnn/modules/photo/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudacodec/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafeatures2d/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudastereo/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include;C:/Source/opencv_cuda4dnn/build_no_tbb/downloads/xfeatures2d;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xobjdetect/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/aruco/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/bgsegm/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudabgsegm/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaobjdetect/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/dnn_objdetect/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/dpm/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/photo/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv_cuda4dnn/modules/stitching/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafeatures2d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/plot/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaoptflow/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/plot/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/superres/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudacodec/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaoptflow/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv_cuda4dnn/modules/photo/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaoptflow/include;C:/Source/opencv_cuda4dnn/modules/world/include;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include;C:/Source/opencv_cuda4dnn/modules/core/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include;C:/Source/opencv_cuda4dnn/modules/flann/include;C:/Source/opencv_cuda4dnn/modules/imgproc/include;C:/Source/opencv_cuda4dnn/modules/ml/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/plot/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include;C:/Source/opencv_cuda4dnn/modules/dnn/include;C:/Source/opencv_cuda4dnn/modules/features2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/hfs/include;C:/Source/opencv_cuda4dnn/modules/imgcodecs/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/line_descriptor/include;C:/Source/opencv_cuda4dnn/modules/photo/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/saliency/include;C:/Source/opencv_cuda4dnn/modules/videoio/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include;C:/Source/opencv_cuda4dnn/modules/calib3d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudacodec/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafeatures2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudastereo/include;C:/Source/opencv_cuda4dnn/modules/highgui/include;C:/Source/opencv_cuda4dnn/modules/objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include;C:/Source/opencv_cuda4dnn/modules/video/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/xobjdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/aruco/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/bgsegm/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudabgsegm/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaobjdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/dnn_objdetect/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/dpm/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include;C:/Source/opencv_cuda4dnn/modules/stitching/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaoptflow/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/superres/include;C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include;C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.1/include") # list (needs to be in quotes to handle spaces properly).
set(CUDA_NVCC_COMPILE_DEFINITIONS [==[_VARIADIC_MAX=10;__OPENCV_BUILD=1;OPENCV_WITH_ITT=1;CV_OCL4DNN=1;CV_CUDA4DNN=1;_CRT_SECURE_NO_WARNINGS=1;HAVE_PROTOBUF=1;_HFS_CUDA_ON_;HAVE_WEBP;HAVE_IMGCODEC_HDR;HAVE_IMGCODEC_SUNRASTER;HAVE_IMGCODEC_PXM;HAVE_IMGCODEC_PFM;HAVE_WEBP;HAVE_NVIDIA_OPTFLOW=1;_USE_MATH_DEFINES;__STDC_CONSTANT_MACROS;__STDC_LIMIT_MACROS;__STDC_FORMAT_MACROS]==]) # list (needs to be in lua quotes see #16510 ).
set(format_flag "-c") # string
set(cuda_language_flag ) # list

# Clean up list of include directories and add -I flags
list(REMOVE_DUPLICATES CUDA_NVCC_INCLUDE_DIRS)
set(CUDA_NVCC_INCLUDE_ARGS)
foreach(dir ${CUDA_NVCC_INCLUDE_DIRS})
  # Extra quotes are added around each flag to help nvcc parse out flags with spaces.
  list(APPEND CUDA_NVCC_INCLUDE_ARGS "-I${dir}")
endforeach()

# Clean up list of compile definitions, add -D flags, and append to nvcc_flags
list(REMOVE_DUPLICATES CUDA_NVCC_COMPILE_DEFINITIONS)
foreach(def ${CUDA_NVCC_COMPILE_DEFINITIONS})
  list(APPEND nvcc_flags "-D${def}")
endforeach()

if(build_cubin AND NOT generated_cubin_file)
  message(FATAL_ERROR "You must specify generated_cubin_file on the command line")
endif()

# This is the list of host compilation flags.  It C or CXX should already have
# been chosen by FindCUDA.cmake.
set(CMAKE_HOST_FLAGS  /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:fast      /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /MP8  /wd4189 /wd4505 /wd4127 /wd4324 /wd4512 /wd4127 /wd4324 /wd4512 /wd4127 /wd4100 /wd4324 /wd4512 /wd4515 /wd4127 /wd4324 /wd4512 /wd4244 /wd4267 /wd4018 /wd4355 /wd4800 /wd4251 /wd4996 /wd4146 /wd4305 /wd4127 /wd4100 /wd4512 /wd4125 /wd4389 /wd4510 /wd4610 /wd4702 /wd4456 /wd4457 /wd4065 /wd4310 /wd4661 /wd4506 /wd4125 /wd4267 /wd4127 /wd4244 /wd4512 /wd4702 /wd4456 /wd4510 /wd4610 /wd4800 /wd4701 /wd4703 /wd4505 /wd4127 /wd4324 /wd4512 /wd4127 /wd4100 /wd4324 /wd4512 /wd4515 /wd4127 /wd4324 /wd4512 /wd4127 /wd4324 /wd4512 /wd4127 /wd4130 /wd4324 /wd4512 /wd4310 /wd4127 /wd4324 /wd4512 /wd4267 /wd4512 /wd4458 /wd4127 /wd4324 /wd4512 )
set(CMAKE_HOST_FLAGS_DEBUG  /MDd /Zi /Ob0 /Od /RTC1 /DNOMINMAX )
set(CMAKE_HOST_FLAGS_RELEASE  /MD /O2 /Ob2 /DNDEBUG /DNOMINMAX )
set(CMAKE_HOST_FLAGS_RELWITHDEBINFO /MD /Zi /O2 /Ob1 /DNDEBUG /DNOMINMAX)
set(CMAKE_HOST_FLAGS_MINSIZEREL /MD /O1 /Ob1 /DNDEBUG /DNOMINMAX)

# Take the compiler flags and package them up to be sent to the compiler via -Xcompiler
set(nvcc_host_compiler_flags "")
# If we weren't given a build_configuration, use Debug.
if(NOT build_configuration)
  set(build_configuration Debug)
endif()
string(TOUPPER "${build_configuration}" build_configuration)
#message("CUDA_NVCC_HOST_COMPILER_FLAGS = ${CUDA_NVCC_HOST_COMPILER_FLAGS}")
foreach(flag ${CMAKE_HOST_FLAGS} ${CMAKE_HOST_FLAGS_${build_configuration}})
  # Extra quotes are added around each flag to help nvcc parse out flags with spaces.
  string(APPEND nvcc_host_compiler_flags ",\"${flag}\"")
endforeach()
if (nvcc_host_compiler_flags)
  set(nvcc_host_compiler_flags "-Xcompiler" ${nvcc_host_compiler_flags})
endif()
#message("nvcc_host_compiler_flags = \"${nvcc_host_compiler_flags}\"")
# Add the build specific configuration flags
list(APPEND CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS_${build_configuration}})

# Any -ccbin existing in CUDA_NVCC_FLAGS gets highest priority
list( FIND CUDA_NVCC_FLAGS "-ccbin" ccbin_found0 )
list( FIND CUDA_NVCC_FLAGS "--compiler-bindir" ccbin_found1 )
if( ccbin_found0 LESS 0 AND ccbin_found1 LESS 0 AND CUDA_HOST_COMPILER )
  if (CUDA_HOST_COMPILER STREQUAL "$(VCInstallDir)Tools/MSVC/$(VCToolsVersion)/bin/Host$(Platform)/$(PlatformTarget)" AND DEFINED CCBIN)
    set(CCBIN -ccbin "${CCBIN}")
  else()
    set(CCBIN -ccbin "${CUDA_HOST_COMPILER}")
  endif()
endif()

# cuda_execute_process - Executes a command with optional command echo and status message.
#
#   status  - Status message to print if verbose is true
#   command - COMMAND argument from the usual execute_process argument structure
#   ARGN    - Remaining arguments are the command with arguments
#
#   CUDA_result - return value from running the command
#
# Make this a macro instead of a function, so that things like RESULT_VARIABLE
# and other return variables are present after executing the process.
macro(cuda_execute_process status command)
  set(_command ${command})
  if(NOT "x${_command}" STREQUAL "xCOMMAND")
    message(FATAL_ERROR "Malformed call to cuda_execute_process.  Missing COMMAND as second argument. (command = ${command})")
  endif()
  if(verbose)
    execute_process(COMMAND "${CMAKE_COMMAND}" -E echo -- ${status})
    # Now we need to build up our command string.  We are accounting for quotes
    # and spaces, anything else is left up to the user to fix if they want to
    # copy and paste a runnable command line.
    set(cuda_execute_process_string)
    foreach(arg ${ARGN})
      # If there are quotes, excape them, so they come through.
      string(REPLACE "\"" "\\\"" arg ${arg})
      # Args with spaces need quotes around them to get them to be parsed as a single argument.
      if(arg MATCHES " ")
        list(APPEND cuda_execute_process_string "\"${arg}\"")
      else()
        list(APPEND cuda_execute_process_string ${arg})
      endif()
    endforeach()
    # Echo the command
    execute_process(COMMAND ${CMAKE_COMMAND} -E echo ${cuda_execute_process_string})
  endif()
  # Run the command
  execute_process(COMMAND ${ARGN} RESULT_VARIABLE CUDA_result )
endmacro()

# Delete the target file
cuda_execute_process(
  "Removing ${generated_file}"
  COMMAND "${CMAKE_COMMAND}" -E remove "${generated_file}"
  )

# For CUDA 2.3 and below, -G -M doesn't work, so remove the -G flag
# for dependency generation and hope for the best.
set(depends_CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS}")
set(CUDA_VERSION 10.1)
if(CUDA_VERSION VERSION_LESS "3.0")
  # Note that this will remove all occurrences of -G.
  list(REMOVE_ITEM depends_CUDA_NVCC_FLAGS "-G")
endif()

# nvcc doesn't define __CUDACC__ for some reason when generating dependency files.  This
# can cause incorrect dependencies when #including files based on this macro which is
# defined in the generating passes of nvcc invocation.  We will go ahead and manually
# define this for now until a future version fixes this bug.
set(CUDACC_DEFINE -D__CUDACC__)

# Generate the dependency file
cuda_execute_process(
  "Generating dependency file: ${NVCC_generated_dependency_file}"
  COMMAND "${CUDA_NVCC_EXECUTABLE}"
  -M
  ${CUDACC_DEFINE}
  "${source_file}"
  -o "${NVCC_generated_dependency_file}"
  ${CCBIN}
  ${nvcc_flags}
  ${nvcc_host_compiler_flags}
  ${depends_CUDA_NVCC_FLAGS}
  -DNVCC
  ${CUDA_NVCC_INCLUDE_ARGS}
  )

if(CUDA_result)
  message(FATAL_ERROR "Error generating ${generated_file}")
endif()

# Generate the cmake readable dependency file to a temp file.  Don't put the
# quotes just around the filenames for the input_file and output_file variables.
# CMake will pass the quotes through and not be able to find the file.
cuda_execute_process(
  "Generating temporary cmake readable file: ${cmake_dependency_file}.tmp"
  COMMAND "${CMAKE_COMMAND}"
  -D "input_file:FILEPATH=${NVCC_generated_dependency_file}"
  -D "output_file:FILEPATH=${cmake_dependency_file}.tmp"
  -D "verbose=${verbose}"
  -P "${CUDA_make2cmake}"
  )

if(CUDA_result)
  message(FATAL_ERROR "Error generating ${generated_file}")
endif()

# Copy the file if it is different
cuda_execute_process(
  "Copy if different ${cmake_dependency_file}.tmp to ${cmake_dependency_file}"
  COMMAND "${CMAKE_COMMAND}" -E copy_if_different "${cmake_dependency_file}.tmp" "${cmake_dependency_file}"
  )

if(CUDA_result)
  message(FATAL_ERROR "Error generating ${generated_file}")
endif()

# Delete the temporary file
cuda_execute_process(
  "Removing ${cmake_dependency_file}.tmp and ${NVCC_generated_dependency_file}"
  COMMAND "${CMAKE_COMMAND}" -E remove "${cmake_dependency_file}.tmp" "${NVCC_generated_dependency_file}"
  )

if(CUDA_result)
  message(FATAL_ERROR "Error generating ${generated_file}")
endif()

# Generate the code
cuda_execute_process(
  "Generating ${generated_file}"
  COMMAND "${CUDA_NVCC_EXECUTABLE}"
  "${source_file}"
  ${cuda_language_flag}
  ${format_flag} -o "${generated_file}"
  ${CCBIN}
  ${nvcc_flags}
  ${nvcc_host_compiler_flags}
  ${CUDA_NVCC_FLAGS}
  -DNVCC
  ${CUDA_NVCC_INCLUDE_ARGS}
  )

if(CUDA_result)
  # Since nvcc can sometimes leave half done files make sure that we delete the output file.
  cuda_execute_process(
    "Removing ${generated_file}"
    COMMAND "${CMAKE_COMMAND}" -E remove "${generated_file}"
    )
  message(FATAL_ERROR "Error generating file ${generated_file}")
else()
  if(verbose)
    message("Generated ${generated_file} successfully.")
  endif()
endif()

# Cubin resource report commands.
if( build_cubin )
  # Run with -cubin to produce resource usage report.
  cuda_execute_process(
    "Generating ${generated_cubin_file}"
    COMMAND "${CUDA_NVCC_EXECUTABLE}"
    "${source_file}"
    ${CUDA_NVCC_FLAGS}
    ${nvcc_flags}
    ${CCBIN}
    ${nvcc_host_compiler_flags}
    -DNVCC
    -cubin
    -o "${generated_cubin_file}"
    ${CUDA_NVCC_INCLUDE_ARGS}
    )

  # Execute the parser script.
  cuda_execute_process(
    "Executing the parser script"
    COMMAND  "${CMAKE_COMMAND}"
    -D "input_file:STRING=${generated_cubin_file}"
    -P "${CUDA_parse_cubin}"
    )

endif()

cmake_policy(POP)
