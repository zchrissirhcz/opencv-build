@echo off

set BUILD_DIR=sigmastar-opencv-3.4.13
if not exist %BUILD_DIR% md %BUILD_DIR%
cd %BUILD_DIR%
cmake -G Ninja ^
  -DCMAKE_TOOLCHAIN_FILE=..\toolchains/arm-linux-gnueabihf.toolchain.cmake ^
  -DBUILD_PLATFORM="sigmastar" ^
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON ^
  -DBUILD_LIST=core,imgproc,imgcodecs ^
  -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON ^
  $(type ..\options\opencv-4.5.1-android-minimal.txt) ^
  ../../opencv-3.4.13

@REM cmake --build . -j4
@REM cmake --install .

cd ..
pause
