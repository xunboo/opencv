
set(CMAKE_BUILD_TYPE "")

set(BUILD_SHARED_LIBS "ON")

set(CMAKE_C_FLAGS " /DWIN32 /D_WINDOWS /W3  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:fast       /MP8 ")

set(CMAKE_C_FLAGS_DEBUG "/MDd /Zi /Ob0 /Od /RTC1 /DNOMINMAX ")

set(CMAKE_C_FLAGS_RELEASE "  /MD /O2 /Ob2 /DNDEBUG /DNOMINMAX ")

set(CMAKE_CXX_FLAGS " /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:fast     /EHa /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /MP8 ")

set(CMAKE_CXX_FLAGS_DEBUG " /MDd /Zi /Ob0 /Od /RTC1 /DNOMINMAX ")

set(CMAKE_CXX_FLAGS_RELEASE " /MD /O2 /Ob2 /DNDEBUG /DNOMINMAX ")

set(CV_GCC "")

set(CV_CLANG "")

set(ENABLE_NOISY_WARNINGS "OFF")

set(CMAKE_MODULE_LINKER_FLAGS "/machine:x64")

set(CMAKE_INSTALL_PREFIX "C:/Source/opencv_cuda4dnn/build_no_tbb/install")

set(OPENCV_PYTHON_INSTALL_PATH "")

set(OpenCV_SOURCE_DIR "C:/Source/opencv_cuda4dnn")

set(OPENCV_FORCE_PYTHON_LIBS "")

set(OPENCV_PYTHON_SKIP_LINKER_EXCLUDE_LIBS "")

set(OPENCV_PYTHON_BINDINGS_DIR "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator")

set(cv2_custom_hdr "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_custom_headers.h")

set(cv2_generated_files "C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_enums.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_funcs.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_include.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_modules.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_modules_content.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_types.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_generated_types_content.h;C:/Source/opencv_cuda4dnn/build_no_tbb/modules/python_bindings_generator/pyopencv_signatures.json")
