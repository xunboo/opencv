# Install script for directory: C:/Source/opencv_cuda4dnn/modules/world

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Source/opencv_cuda4dnn/build_no_tbb/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlicensesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/licenses" TYPE FILE RENAME "SoftFloat-COPYING.txt" FILES "C:/Source/opencv_cuda4dnn/modules/core/3rdparty/SoftFloat/COPYING.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE FILE RENAME "opencv_videoio_ffmpeg412_64.dll" FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/3rdparty/ffmpeg/opencv_videoio_ffmpeg_64.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/lib/Debug/opencv_world412d.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/lib/Release/opencv_world412.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/lib/RelWithDebInfo/opencv_world412.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibsx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE SHARED_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/Debug/opencv_world412d.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE SHARED_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/Release/opencv_world412.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE SHARED_LIBRARY OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/RelWithDebInfo/opencv_world412.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpdbx")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/Debug/opencv_world412d.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/Release/opencv_world412.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc15/bin" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/build_no_tbb/bin/RelWithDebInfo/opencv_world412.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/block.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/detail/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/detail/reduce_key_val.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/dynamic_smem.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/scan.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/block" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/block/vec_distance.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/common.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/binary_func.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/binary_op.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/color.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/deriv.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/expr.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/per_element_func.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/reduction.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/unary_func.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/unary_op.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/expr" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/expr/warping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/functional" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/functional/color_cvt.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/functional/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/functional/detail/color_cvt.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/functional" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/functional/functional.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/functional" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/functional/tuple_adapter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/copy.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/copy.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/histogram.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/integral.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/minmaxloc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/pyr_down.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/pyr_up.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/reduce_to_column.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/reduce_to_row.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/split_merge.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/transform.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/detail/transpose.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/histogram.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/integral.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/pyramids.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/reduce_to_vec.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/split_merge.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/transform.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/grid" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/grid/transpose.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/constant.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/deriv.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/detail/gpumat.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/extrapolation.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/glob.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/gpumat.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/interpolation.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/lut.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/mask.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/remap.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/resize.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/texture.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/transform.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/warping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/ptr2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/ptr2d/zip.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/atomic.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/detail/tuple.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/detail/type_traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/limits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/saturate_cast.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/simd_functions.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/tuple.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/type_traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/vec_math.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/util" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/util/vec_traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/detail/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/detail/reduce_key_val.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/scan.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/shuffle.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev/warp" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/warp/warp.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudev" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudev/include/opencv2/cudev/common.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/ocl_defs.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/opencl_info.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/opencl_svm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_clamdblas.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_clamdfft.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_core.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_core_wrappers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_gl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime/autogenerated" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/autogenerated/opencl_gl_wrappers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_clamdblas.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_clamdfft.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_core.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_core_wrappers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_gl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_gl_wrappers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_20.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_definitions.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/opencl/runtime" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opencl/runtime/opencl_svm_hsa_extension.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/block.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/border_interpolate.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/color.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/common.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/datamov_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/dynamic_smem.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/emulation.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/filters.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/funcattrib.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/functional.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/limits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/saturate_cast.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/scan.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/simd_functions.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/transform.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/type_traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/utility.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/vec_distance.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/vec_math.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/vec_traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/warp.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/warp_reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/warp_shuffle.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/color_detail.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/reduce.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/reduce_key_val.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/transform_detail.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/type_traits_detail.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/cuda/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda/detail/vec_distance_detail.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/affine.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/async.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/base.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/bindings_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/bufferpool.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/check.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/core.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/core_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda.inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda_stream_accessor.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cuda_types.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cv_cpu_dispatch.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cv_cpu_helper.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cvdef.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cvstd.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cvstd.inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/cvstd_wrapper.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/directx.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/eigen.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/fast_math.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/hal.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/interface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_avx.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_avx512.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_cpp.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_forward.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_msa.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_neon.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_sse.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_sse_em.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_vsx.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/intrin_wasm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/hal/msa_macros.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/mat.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/mat.inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/matx.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/neon_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/ocl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/ocl_genbase.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/opengl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/operations.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/optim.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/ovx.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/persistence.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/saturate.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/simd_intrinsics.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/softfloat.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/sse_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/traits.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/types.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/types_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utility.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/allocator_stats.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/allocator_stats.impl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/filesystem.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/logger.defines.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/logger.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/logtag.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/utils/trace.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/va_intel.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/version.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/vsx_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/detail/async_promise.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/core/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/core/include/opencv2/core/detail/exception_ptr.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaarithm/include/opencv2/cudaarithm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/all_indices.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/allocator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/any.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/autotuned_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/composite_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/defines.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/dist.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/dummy.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/dynamic_bitset.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/flann.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/flann_base.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/general.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/ground_truth.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/hdf5.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/heap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/hierarchical_clustering_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/index_testing.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/kdtree_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/kdtree_single_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/kmeans_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/linear_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/logger.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/lsh_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/lsh_table.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/matrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/miniflann.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/nn_index.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/object_factory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/params.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/random.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/result_set.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/sampling.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/saving.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/simplex_downhill.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/flann" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/flann/include/opencv2/flann/timer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/hal/hal.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/hal/interface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/imgproc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/imgproc_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/types_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgproc/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgproc/include/opencv2/imgproc/detail/gcgraph.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/ml/include/opencv2/ml.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ml" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/ml/include/opencv2/ml/ml.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ml" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/ml/include/opencv2/ml/ml.inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include/opencv2/phase_unwrapping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/phase_unwrapping" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include/opencv2/phase_unwrapping/histogramphaseunwrapping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/phase_unwrapping" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/phase_unwrapping/include/opencv2/phase_unwrapping/phase_unwrapping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/plot/include/opencv2/plot.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/quality_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualitybase.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualitybrisque.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualitygmsd.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualitymse.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualitypsnr.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/quality" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/quality/include/opencv2/quality/qualityssim.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/map.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mapaffine.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mapper.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mappergradaffine.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mappergradeuclid.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mappergradproj.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mappergradshift.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mappergradsimilar.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mapperpyramid.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mapprojec.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/reg" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/reg/include/opencv2/reg/mapshift.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching/icp.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching/pose_3d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching/ppf_helpers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching/ppf_match_3d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/surface_matching" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/surface_matching/include/opencv2/surface_matching/t_hash_int.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafilters/include/opencv2/cudafilters.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaimgproc/include/opencv2/cudaimgproc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudawarping/include/opencv2/cudawarping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/all_layers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/dict.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/dnn.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/dnn.inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/layer.details.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/layer.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/shape_utils.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn/utils" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/utils/inference_engine.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/dnn" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/dnn/include/opencv2/dnn/version.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/features2d/include/opencv2/features2d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/features2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/features2d/include/opencv2/features2d/features2d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/features2d/hal" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/features2d/include/opencv2/features2d/hal/interface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include/opencv2/fuzzy.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include/opencv2/fuzzy/fuzzy_F0_math.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include/opencv2/fuzzy/fuzzy_F1_math.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include/opencv2/fuzzy/fuzzy_image.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/fuzzy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/fuzzy/include/opencv2/fuzzy/types.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/hfs/include/opencv2/hfs.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgcodecs/include/opencv2/imgcodecs.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgcodecs/include/opencv2/imgcodecs/ios.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs/legacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/imgcodecs/include/opencv2/imgcodecs/legacy/constants_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/line_descriptor/include/opencv2/line_descriptor.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/line_descriptor" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/line_descriptor/include/opencv2/line_descriptor/descriptor.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/photo/include/opencv2/photo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/photo" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/photo/include/opencv2/photo/cuda.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/photo/legacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/photo/include/opencv2/photo/legacy/constants_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/photo" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/photo/include/opencv2/photo/photo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/saliency/include/opencv2/saliency.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/saliency" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/saliency/include/opencv2/saliency/saliencyBaseClasses.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/saliency" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/saliency/include/opencv2/saliency/saliencySpecializedClasses.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videoio" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio/cap_ios.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videoio/legacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio/legacy/constants_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videoio" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio/registry.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videoio" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio/videoio.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videoio" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/videoio/include/opencv2/videoio/videoio_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/bm3d_image_denoising.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/dct_image_denoising.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/inpainting.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/oilpainting.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/tonemap.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xphoto" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xphoto/include/opencv2/xphoto/white_balance.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/calib3d/include/opencv2/calib3d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/calib3d" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/calib3d/include/opencv2/calib3d/calib3d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/calib3d" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/calib3d/include/opencv2/calib3d/calib3d_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudacodec/include/opencv2/cudacodec.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudafeatures2d/include/opencv2/cudafeatures2d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudastereo/include/opencv2/cudastereo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/highgui/include/opencv2/highgui.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/highgui" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/highgui/include/opencv2/highgui/highgui.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/highgui" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/highgui/include/opencv2/highgui/highgui_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/objdetect/include/opencv2/objdetect.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/objdetect" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/objdetect/include/opencv2/objdetect/detection_based_tracker.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/objdetect" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/objdetect/include/opencv2/objdetect/objdetect.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include/opencv2/rgbd.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/rgbd" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include/opencv2/rgbd/depth.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/rgbd" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include/opencv2/rgbd/kinfu.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/rgbd" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/rgbd/include/opencv2/rgbd/linemod.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/shape" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape/emdL1.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/shape" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape/hist_cost.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/shape" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape/shape.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/shape" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape/shape_distance.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/shape" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/shape/include/opencv2/shape/shape_transformer.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include/opencv2/structured_light.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/structured_light" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include/opencv2/structured_light/graycodepattern.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/structured_light" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include/opencv2/structured_light/sinusoidalpattern.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/structured_light" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/structured_light/include/opencv2/structured_light/structured_light.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include/opencv2/text.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/text" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include/opencv2/text/erfilter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/text" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include/opencv2/text/ocr.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/text" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/text/include/opencv2/text/textDetector.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/video/include/opencv2/video.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/video/include/opencv2/video/background_segm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video/legacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/video/include/opencv2/video/legacy/constants_c.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/video/include/opencv2/video/tracking.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/video/include/opencv2/video/video.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include/opencv2/xfeatures2d.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xfeatures2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include/opencv2/xfeatures2d/cuda.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/xfeatures2d" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xfeatures2d/include/opencv2/xfeatures2d/nonfree.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/brightedges.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/color_match.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/deriche_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/disparity_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/edge_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/edgeboxes.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/edgepreserving_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/estimated_covariance.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/fast_hough_transform.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/fast_line_detector.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/fourier_descriptors.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/lsc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/paillou_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/peilin.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/ridgefilter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/run_length_morphology.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/seeds.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/segmentation.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/slic.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/sparse_match_interpolator.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/structured_edge_detection.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ximgproc" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ximgproc/include/opencv2/ximgproc/weighted_median_filter.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/xobjdetect/include/opencv2/xobjdetect.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/aruco/include/opencv2/aruco.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/aruco" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/aruco/include/opencv2/aruco/charuco.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/aruco" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/aruco/include/opencv2/aruco/dictionary.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bgsegm/include/opencv2/bgsegm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include/opencv2/bioinspired.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include/opencv2/bioinspired/bioinspired.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include/opencv2/bioinspired/retina.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include/opencv2/bioinspired/retinafasttonemapping.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/bioinspired" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/bioinspired/include/opencv2/bioinspired/transientareassegmentationmodule.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include/opencv2/ccalib.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ccalib" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include/opencv2/ccalib/multicalib.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ccalib" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include/opencv2/ccalib/omnidir.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/ccalib" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/ccalib/include/opencv2/ccalib/randpattern.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudabgsegm/include/opencv2/cudabgsegm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudalegacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy/NCV.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudalegacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy/NCVBroxOpticalFlow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudalegacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy/NCVHaarObjectDetection.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudalegacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy/NCVPyramid.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/cudalegacy" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudalegacy/include/opencv2/cudalegacy/NPP_staging.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaobjdetect/include/opencv2/cudaobjdetect.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/ar_hmdb.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/ar_sports.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/dataset.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/fr_adience.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/fr_lfw.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/gr_chalearn.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/gr_skig.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/hpe_humaneva.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/hpe_parse.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/ir_affine.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/ir_robot.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/is_bsds.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/is_weizmann.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/msm_epfl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/msm_middlebury.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/or_imagenet.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/or_mnist.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/or_pascal.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/or_sun.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/pd_caltech.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/pd_inria.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/slam_kitti.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/slam_tumindoor.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/tr_chars.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/tr_icdar.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/tr_svt.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/track_alov.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/track_vot.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/datasets" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/datasets/include/opencv2/datasets/util.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/dnn_objdetect/include/opencv2/core_detect.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/dpm/include/opencv2/dpm.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/bif.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/face_alignment.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/facemark.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/facemarkAAM.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/facemarkLBF.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/facemark_train.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/facerec.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/mace.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/face" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/face/include/opencv2/face/predict_collector.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include/opencv2/optflow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/optflow" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include/opencv2/optflow/motempl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/optflow" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include/opencv2/optflow/pcaflow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/optflow" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include/opencv2/optflow/rlofflow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/optflow" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/optflow/include/opencv2/optflow/sparse_matching_gpc.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/warpers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/autocalib.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/blenders.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/camera.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/exposure_compensate.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/matchers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/motion_estimators.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/seam_finders.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/timelapsers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/util.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/util_inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/warpers.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/stitching/include/opencv2/stitching/detail/warpers_inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/feature.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/kalman_filters.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/onlineBoosting.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/onlineMIL.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/tldDataset.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/tracker.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/tracking.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/tracking" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/tracking/include/opencv2/tracking/tracking_by_matching.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/cudaoptflow/include/opencv2/cudaoptflow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include/opencv2/stereo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stereo" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include/opencv2/stereo/descriptor.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stereo" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include/opencv2/stereo/matching.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stereo" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include/opencv2/stereo/quasi_dense_stereo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stereo" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/stereo/include/opencv2/stereo/stereo.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/superres/include/opencv2/superres.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/superres" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/superres/include/opencv2/superres/optical_flow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/deblurring.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/fast_marching.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/fast_marching_inl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/frame_source.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/global_motion.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/inpainting.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/log.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/motion_core.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/motion_stabilizing.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/optical_flow.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/outlier_rejection.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/ring_buffer.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/stabilizer.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "C:/Source/opencv/opencv_contrib-4.1.1/modules/videostab/include/opencv2/videostab/wobble_suppression.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Source/opencv_cuda4dnn/modules/world/include/opencv2/world.hpp")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Source/opencv_cuda4dnn/build_no_tbb/modules/world/tools/cmake_install.cmake")

endif()

