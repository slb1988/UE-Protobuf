# UE4-Protobuf
各个平台Protobuf静态库

使用3.5版本Protobuf +cmake打包

## Linux
环境：linux，cmake,下载好依赖的UnrealEngine（linux原生编译https://github.com/EpicGames/UnrealEngine/blob/release/Engine/Build/BatchFiles/Linux/README.md）
	1. 设置环境变量UE_ENGINE_PATH = UnrealEngine/Engine
	2. 执行build-Linux.sh
	3. 构建完成后可以在bin/lib/Linux 得到lib
## Window
环境：Window，cmake,下载好依赖的UnrealEngine
	1. 执行build-Window.bat
	2. 构建完成后可以在bin/lib/Window 得到lib
## MAC
环境：Mac，cmake,下载好依赖的UnrealEngine
	1. 执行build-Mac.command
	2. 构建完成后可以在bin/lib/Mac 得到lib
## IOS
环境：Mac，cmake,下载好依赖的UnrealEngine
	1. 先更新ios-cmake 子模块得到ios.toolchain.cmake
	2. 执行build-Ios.command
	3. 构建完成后可以在bin/lib/Ios 得到lib
## Android