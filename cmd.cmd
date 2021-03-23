@echo off

@REM set REPO_URL=https://gitee.com/mirrors/opencv.git
set REPO_URL=e:/github/opencv

git clone --depth 1 %REPO_URL% --branch 2.4.13.7 ..\opencv-2.4.13.7
git clone --depth 1 %REPO_URL% --branch 3.4.13 ..\opencv-3.4.13
git clone --depth 1 %REPO_URL% --branch 4.5.1 ..\opencv-4.5.1
