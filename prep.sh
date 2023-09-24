#!/bin/bash
read -p "Enter Project Name: " prj
sed -i "s/CCGTemplate/$prj/g" conanfile.py
sed -i "s/CCGTemplate/$prj/g" CMakeLists.txt 
