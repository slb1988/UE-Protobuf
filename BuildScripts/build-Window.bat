mkdir TempBuildWindow
cd TempBuildWindow

set PB_SOURCE=%~dp0
	
cmake -G "Visual Studio 15 2017 Win64" -DPLATFORM=Window %PB_SOURCE% 

cmake --build . --target libProtobuf --config=Release
