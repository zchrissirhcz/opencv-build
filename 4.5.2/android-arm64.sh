#!/bin/bash


BUILD_DIR=android-arm64
mkdir -p $BUILD_DIR
cd $BUILD_DIR

ANDROID_NDK=/home/zz/soft/android-ndk-r21b
TOOLCHAIN=$ANDROID_NDK/build/cmake/android.toolchain.cmake

cmake ../.. \
    -G Ninja \
    -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN \
    -DANDROID_ABI="arm64-v8a" \
    -DANDROID_PLATFORM=android-24 \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=/home/zz/lib/opencv-4.5.2-android-sdk \
    -D BUILD_TESTS=OFF \
    -D BUILD_PERF_TESTS=OFF \
    -D WITH_CUDA=OFF \
    -D WITH_VTK=OFF \
    -D WITH_MATLAB=OFF \
    -D BUILD_DOCS=OFF \
    -D BUILD_opencv_python3=OFF \
    -D BUILD_opencv_python2=OFF \
    -D WITH_IPP=OFF \
    -DBUILD_ANDROID_PROJECTS=OFF \
    -DBUILD_ANDROID_EXAMPLES=OFF \
    -DBUILD_ANDROID_SERVICE=OFF

cmake --build .
cmake --install .

cd ..
