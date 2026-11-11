cmake_minimum_required(VERSION 3.22...4.4)

if(NOT DEFINED CMAKE_PROJECT_TOP_LEVEL_INCLUDES)
    set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES "conan_provider.cmake")
endif()

project(vsm)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(tl-expected REQUIRED)

add_subdirectory(src)

enable_testing()
add_subdirectory(test)