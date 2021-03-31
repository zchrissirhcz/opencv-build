Set-PSDebug -Trace 1

$BUILD_DIR="sigmastar-opencv-4.5.2-pre"
$REPO_DIR="G:/dev/opencv-4.5.2-pre"
$TOOLCHAIN_FILE="../toolchains/arm-linux-gnueabihf.toolchain.cmake"

If(!(test-path $BUILD_DIR))
{
    New-Item -ItemType Directory -Force -Path $BUILD_DIR
}

cd $BUILD_DIR

cmake $REPO_DIR -G "Ninja" -DCMAKE_TOOLCHAIN_FILE="$($TOOLCHAIN_FILE)" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON $(type ..\options\opencv-4.5.1-android-minimal.txt)

cmake --build . --config Release -j 2

cmake --install . --config Release

cd ..