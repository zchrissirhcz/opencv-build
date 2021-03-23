@echo off

set BUILD_DIR=sigmastar-opencv-2.4.13.7
if not exist %BUILD_DIR% md %BUILD_DIR%
cd %BUILD_DIR%
cmake -G Ninja ^
  -DCMAKE_TOOLCHAIN_FILE=..\toolchains/arm-linux-gnueabihf.toolchain.cmake ^
  -DBUILD_PLATFORM="sigmastar" ^
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON ^
  -DBUILD_LIST=core,imgproc,imgcodecs ^
  -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON ^
  ../../opencv-2.4.13.7

cmake --build . -j4
cmake --install .

cd ..
pause
