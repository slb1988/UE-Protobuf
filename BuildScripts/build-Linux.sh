#!/bin/bash

mkdir TempBuildLinux
cd TempBuildLinux

cmake -DPLATFORM=Linux ..

cmake --build . --target libProtobuf
