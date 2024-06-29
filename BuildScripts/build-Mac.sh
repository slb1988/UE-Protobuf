#!/bin/bash

# 获取脚本所在目录
SCRIPT_DIR=$(dirname "$0")

# 切换到脚本所在目录
cd "$SCRIPT_DIR"

pwd
mkdir TempBuildMac
cd TempBuildMac

cmake -G "Xcode" -DPLATFORM=Mac ../

cmake --build . --target libProtobuf --config=Release

mkdir -p ../Protobuf/Source/ThirdParty/lib/Mac
cp bin/lib/Mac/Release/libUE4-Protobuf.a ../Protobuf/Source/ThirdParty/lib/Mac/libprotobuf.a