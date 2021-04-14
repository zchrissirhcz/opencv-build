@echo off

set BUILD_DIR=vs2019-x64
if not exist %BUILD_DIR% md %BUILD_DIR%
cd %BUILD_DIR%

@REM -D BUILD_LIST='core,imgcodecs,imgproc,highgui'

cmake ../.. ^
    -G "Visual Studio 16 2019" -A x64 ^
    -D CMAKE_BUILD_TYPE=Debug ^
    -D CMAKE_INSTALL_PREFIX=E:/lib/opencv/4.5.2 ^
    -D BUILD_TESTS=OFF ^
    -D BUILD_PERF_TESTS=OFF ^
    -D WITH_CUDA=OFF ^
    -D WITH_VTK=OFF ^
    -D WITH_MATLAB=OFF ^
    -D BUILD_DOCS=OFF ^
    -D BUILD_opencv_python3=OFF ^
    -D BUILD_opencv_python2=OFF ^
    -D WITH_IPP=OFF

cd ..
pause
