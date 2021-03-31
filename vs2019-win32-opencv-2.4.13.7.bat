@echo off

set BUILD_DIR=vs2019
if not exist %BUILD_DIR% md  %BUILD_DIR%
cd %BUILD_DIR%

cmake ^
    -G "Visual Studio 16 2019" -A win32 ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_INSTALL_PREFIX=E:/lib/opencv/2.4.13.6 ^
    -D WITH_CUDA=OFF ^
    -D WITH_VTK=OFF ^
    -D WITH_MATLAB=OFF ^
    -D BUILD_DOCS=ON ^
	-D OpenCV_RUNTIME=vc16 ^
	-D OpenCV_ARCH=x86 ^
    -D BUILD_opencv_python=OFF ^
    ../../sources

cd ..

pause
