@echo off

set BUILD_DIR=vs2019-win32
if not exist %BUILD_DIR% md %BUILD_DIR%
cd %BUILD_DIR%


cmake ../.. -G "Visual Studio 16 2019" -A win32 ^
    -DGLFW_BUILD_EXAMPLES=OFF ^
    -DGLFW_BUILD_TESTS=OFF ^
    -DCMAKE_INSTALL_PREFIX=E:/lib/glfw/3.3/vc16/x86 ^
    -DCMAKE_DEBUG_POSTFIX=d

cmake --build . --config Debug
cmake --build . --config Release

cmake --install . --config Debug
cmake --install . --config Release

cd ..
pause

