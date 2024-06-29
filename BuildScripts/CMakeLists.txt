cmake_minimum_required(VERSION 3.8)

if(${PLATFORM} STREQUAL "Linux")
	if(NOT DEFINED ENV{UE_ENGINE_PATH})
        message(FATAL_ERROR "not env UE_ENGINE_PATH")
	endif()
	
	SET(CLANG_PATH $ENV{UE_ENGINE_PATH}/Engine/Extras/ThirdPartyNotUE/SDKs/HostLinux/Linux_x64/v16_clang-9.0.1-centos7/x86_64-unknown-linux-gnu)

	SET(CMAKE_CXX_COMPILER ${CLANG_PATH}/bin/clang++)
	SET(CMAKE_C_COMPILER ${CLANG_PATH}/bin/clang)

elseif(${PLATFORM} STREQUAL "Window")
    message(${PLATFORM})
	#set(CMAKE_CXX_FLAGS_RELEASE "/GS /W3 /Gy " )
	set(CMAKE_BUILD_TYPE Release CACHE STRING “set build type to release”)

endif()

project("UE-Protobuf")

#SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/lib/${PLATFORM})

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -v ")
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -v  ")


if(${PLATFORM} STREQUAL "Linux")

	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -stdlib=libc++")

endif()


add_definitions(-DHAVE_PTHREAD)
add_definitions(-DPROTOBUF_INLINE_NOT_IN_HEADERS=1)
add_definitions(-DGOOGLE_PROTOBUF_NO_RTTI)
add_definitions(-DPROTOBUF_API=)
#add_definitions(-DCMAKE_BUILD_TYPE=Release)

set(INC_DIR ${PROJECT_SOURCE_DIR}/Inc)

set(CXX_INC "")

if(${PLATFORM} STREQUAL "Linux")
	set(CXX_INC ${UE_ENGINE_PATH}/Source/ThirdParty/Linux/LibCxx/include/c++/v1)
endif()

include_directories(${INC_DIR} ${CXX_INC}  .)

file(GLOB_RECURSE ALL_SRC *.cc)
add_library(UE-Protobuf STATIC ${ALL_SRC})
