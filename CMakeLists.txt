cmake_minimum_required(VERSION 3.22...4.4)

if(NOT DEFINED CMAKE_PROJECT_TOP_LEVEL_INCLUDES)
    set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES "conan_provider.cmake")
endif()

project(CCGTemplate)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(CCGTemplate_options INTERFACE)
if(CMAKE_CXX_COMPILER_FRONTEND_VARIANT MATCHES "MSVC")
    target_compile_options(CCGTemplate_options INTERFACE /W4 /permissive-)
else()
    target_compile_options(CCGTemplate_options INTERFACE
            $<$<CXX_COMPILER_ID:GNU>:
            -Wall
            -Wextra
            -Wpedantic
            -Wshadow
            -Wconversion
            -Wsign-conversion
            -Wformat=2
            -Wnull-dereference
            -Wimplicit-fallthrough
            -Wnon-virtual-dtor
            -Wold-style-cast
            -Woverloaded-virtual
            >
    )
endif()

find_package(tl-expected REQUIRED)

add_subdirectory(src)

enable_testing()
add_subdirectory(test)