@echo off

set BUILD_DIR=vs2019-x64

if not exist %BUILD_DIR% md  %BUILD_DIR%
cd %BUILD_DIR%

cmake ^
    -G "Visual Studio 16 2019" -A x64 ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_INSTALL_PREFIX=E:/lib/opencv/2.4.13.6 ^
    -D WITH_CUDA=OFF ^
    -D WITH_CUFFT=OFF ^
    -D WITH_VTK=OFF ^
    -D BUILD_DOCS=OFF ^
    -D BUILD_opencv_python=OFF ^
    -D BUILD_TESTS=OFF ^
    -D BUILD_PERF_TESTS=OFF ^
    -D OpenCV_RUNTIME=vc16 ^
    -D OpenCV_ARCH=x64 ^
    -D WITH_IPP=OFF^
    ../../sources

cd ..

pause
