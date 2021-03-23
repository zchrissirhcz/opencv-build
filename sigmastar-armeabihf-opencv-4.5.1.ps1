Set-PSDebug -Trace 1

$BUILD_DIR="sigmastar-armeabihf-opencv-4.5.1"
$REPO_DIR="G:/dev/opencv-4.5.1"
$NDK_DIR="E:/soft/Android/ndk-r21b"
$TOOLCHAIN_FILE="../arm-linux-gnueabihf.toolchain.cmake"

If(!(test-path $BUILD_DIR))
{
    New-Item -ItemType Directory -Force -Path $BUILD_DIR
}

cd $BUILD_DIR

cmake $REPO_DIR -G "Ninja" -DCMAKE_TOOLCHAIN_FILE="$($TOOLCHAIN_FILE)" -DANDROID_ABI="arm64-v8a" -DANDROID_PLATFORM=android-24 -DCMAKE_INSTALL_PREFIX=install $(type ..\options\opencv-4.5.1-android-minimal.txt)

cmake --build . --config Release -j 2

cmake --install . --config Release

cd ..