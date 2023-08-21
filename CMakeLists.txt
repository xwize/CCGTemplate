cmake_minimum_required(VERSION 3.20)

project(CCGTemplate)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(conan.cmake)
conan_cmake_run(CONANFILE conanfile.py
    BASIC_SETUP
	BUILD missing
)

conan_basic_setup(TARGETS)

add_subdirectory(src)

enable_testing()
add_subdirectory(test)