$BUILD_DIR="vs2019-x64-opencv-3.4.13"
$REPO_DIR="G:/dev/opencv-3.4.13"

If(!(test-path $BUILD_DIR))
{
    New-Item -ItemType Directory -Force -Path $BUILD_DIR
}

cd $BUILD_DIR

cmake $REPO_DIR -G "Visual Studio 16 2019" -A x64 -DCMAKE_INSTALL_PREFIX=install $(type ..\options\opencv-4.5.1-windows-minimal.txt)

cmake --build . --config Release -j 2

cmake --install . --config Release