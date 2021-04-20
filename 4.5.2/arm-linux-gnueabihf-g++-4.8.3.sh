#!/bin/bash

#-DCPU_BASELINE=NEON  ，否则cmake被gcc4.8.3迷惑，以为支持FP16，进而编opencv模块时报错

#-DWITH_FFMPEG=ON
#-DWITH_1394=OFF
# 这两个开关，是用来避免直接找dc1394来做编解码，然后编译说 dc1394.h 找不到 的编译报错

# -DWITH_PROTOBUF=OFF
# -DWITH_QUIRC=OFF
# 这两个开关，是用来避免换了电脑后，QUIRC和PROTOBUF库找不到的问题

# 此外，还需要删除 GAPI 目录，否则 libade.a 找不到


BUILD_DIR=armlinux-gnueabihf
mkdir -p $BUILD_DIR
cd $BUILD_DIR

TOOLCHAIN=../arm-linux-gnueabihf.toolchain.cmake

cmake ../.. \
    -G Ninja \
    -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN \
    -D CMAKE_BUILD_TYPE=Release \
    -D BUILD_LIST=core,imgcodecs,imgproc,videoio \
    -D CMAKE_INSTALL_PREFIX=/home/zz/lib/opencv/armlinux-gnueabihf/4.5.2+ \
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
    -DBUILD_ANDROID_SERVICE=OFF \
    -DBUILD_SHARED_LIBS=OFF \
    -DOPENCV_FORCE_3RDPARTY_BUILD=ON \
    -DBUILD_opencv_apps=OFF \
    -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON \
    -DWITH_CUDA=OFF \
    -DWITH_OPENCL=OFF \
    -DWITH_VTK=OFF \
    -DWITH_MATLAB=OFF \
    -DBUILD_DOCS=OFF \
    -DBUILD_opencv_python3=OFF \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_JAVA=OFF \
    -DBUILD_FAT_JAVA_LIB=OFF \
    -DWITH_PROTOBUF=OFF \
    -DWITH_QUIRC=OFF \
    -DWITH_FFMPEG=ON \
    -DCPU_BASELINE=NEON \
    -DWITH_1394=OFF

    #-DCPU_BASELINE_DETECT=OFF

    #-DCPU_BASELINE_DISABLE=FP16

    #-DCV_DISABLE_OPTIMIZATION=ON

    # -DBUILD_TIFF=OFF
    # -DBUILD_OPENJPEG=OFF
    # -DBUILD_JASPER=OFF
    # -DBUILD_JPEG=ON
    # -DBUILD_OPENEXR=OFF
    # -DBUILD_WEBP=OFF
    # -DBUILD_TBB=OFF
    # -DBUILD_IPP_IW=OFF
    # -DBUILD_ITT=OFF
    # -DWITH_OPENJPEG=OFF
    # -DWITH_DSHOW=OFF
    # -DWITH_MSMF=OFF
    # -DWITH_MSMF_DXVA=OFF
    # -DCV_TRACE=OFF
    # -DWITH_IMGCODEC_HDR=OFF
    # -DWITH_IMGCODEC_SUNRASTER=OFF
    # -DWITH_IMGCODEC_PXM=OFF
    # -DWITH_IMGCODEC_PFM=OFF
    # -DWITH_JPEG=ON
    # -DENABLE_PRECOMPILED_HEADERS=OFF
    # -DOPENCV_CMAKE_DEBUG_MESSAGES=OFF
    # -DWITH_DIRECTX=OFF

cmake --build .
cmake --install .

cd ..
