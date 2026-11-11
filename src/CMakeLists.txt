set(SOURCE_FILES
    App.cpp
)

set(HEADER_FILES
    App.hpp
)

add_executable("${CMAKE_PROJECT_NAME}"
    main.cpp
    ${SOURCE_FILES}
    ${HEADER_FILES}
)

target_compile_options("${CMAKE_PROJECT_NAME}" PRIVATE
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

target_link_libraries("${CMAKE_PROJECT_NAME}" PUBLIC
    tl::expected
)
