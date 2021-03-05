# opencv-build

Personal build for OpenCV with github action, mainly for VS2019 platform.

## Why this

The official opencv still does not provide VS2019 prebuilt package, while VS2019's Address Sanitizer is very useful for checking memory related bugs, thus I compile OpenCV manually. Just to share the built package here.

## Releases

[v3](https://github.com/zchrissirhcz/opencv-build/releases/tag/v3) This release contains core,imgproc,imgcodecs,videoio,highgui,photo modules with optimization on, note that image format only support bmp/jpg/png.

[v2](https://github.com/zchrissirhcz/opencv-build/releases/tag/v2) This release is for minimal daily usage of OpenCV, only consist of core,imgproc,imgcodecs module, and imread/imwrite only for bmp/jpg/png format, and turning IPP optimization off.

[v1](https://github.com/zchrissirhcz/opencv-build/releases/tag/v1) This release is for testing how to use github action, only built opencv core module for vs2019-x64.

## What's more

1. This project is inspired by **[opencv-mobile](https://github.com/nihui/opencv-mobile/)**. Note: opencv-mobile turns exceptions/rtti off which NDK's cmake turn exceptions/rtti on on default.

2. Search and guess cmake options is not that fun. OpenCV document page **[tutorial_config_reference](https://docs.opencv.org/4.5.0/db/d05/tutorial_config_reference.html)** now provides detail explanations for many options, you may refer to it when customization built.


