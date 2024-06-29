mkdir TempBuildAndroid
cd TempBuildAndroid

set NDK_ROOT=C:\Users\gongli.qiu\Desktop\android-ndk-r14b
set PB_SOURCE=%~dp0

cmake -G "MinGW Makefiles" -DCMAKE_CXX_FLAGS_RELWITHDEBINFO= -DANDROID_ABI=x86_64 -DPLATFORM=Android -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake -DCMAKE_MAKE_PROGRAM=%NDK_ROOT%/prebuilt/windows-x86_64/bin/make.exe -DANDROID_STL=c++_shared -DANDROID_TOOLCHAIN=gcc %PB_SOURCE%

cmake --build . --target UE-Protobuf 
