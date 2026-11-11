#!/bin/bash
read -p "Enter Project Name: " prj
wget https://raw.githubusercontent.com/conan-io/cmake-conan/refs/heads/develop2/conan_provider.cmake
sed -i "s/CCGTemplate/$prj/g" conanfile.py
sed -i "s/CCGTemplate/$prj/g" CMakeLists.txt 
sed -i "s/CCGTemplate/$prj/g" src/App.cpp
sed -i "s/CCGTemplate/$prj/g" src/App.hpp
sed -i "s/CCGTemplate/$prj/g" src/main.cpp
sed -i "s/CCGTemplate/$prj/g" test/test_App.cpp
