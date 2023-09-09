#!/bin/bash
read -p "Enter Project Name: " prj
awk -v P=$prj '{gsub(/CCGTemplate/,P); print}' conanfile.py > conanfile.py
awk -v P=$prj '{gsub(/CCGTemplate/,P); print}' CMakeLists.txt > CMakeLists.txt
