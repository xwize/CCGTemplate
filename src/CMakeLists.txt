set(SOURCE_FILES
    main.cpp
	App.cpp
)

set(HEADER_FILES
	App.hpp
)

add_executable("${CMAKE_PROJECT_NAME}"
    ${SOURCE_FILES}
    ${HEADER_FILES}
)

target_include_directories("${CMAKE_PROJECT_NAME}"
	PUBLIC
	CONAN_PKG::fmt
)

target_link_libraries("${CMAKE_PROJECT_NAME}" PUBLIC
   	CONAN_PKG::fmt
)