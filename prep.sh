#!/bin/bash
read -p "Enter Project Name: " prj
awk -v P=$prj '{gsub(/CCGTemplate/,P); print}' conanfile.py | tee conanfile.py
awk -v P=$prj '{gsub(/CCGTemplate/,P); print}' CMakeLists.txt | tee CMakeLists.txt
