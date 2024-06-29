#!/bin/bash

# 获取脚本所在目录
SCRIPT_DIR=$(dirname "$0")

# 切换到脚本所在目录
cd "$SCRIPT_DIR"

pwd
mkdir TempBuildIos
cd TempBuildIos

cmake -G "Xcode" -DPLATFORM=Ios -DPLATFORM=OS -DCMAKE_TOOLCHAIN_FILE=ios-cmake/ios.toolchain.cmake ..

cmake --build . --target libProtobuf --config=Release 
