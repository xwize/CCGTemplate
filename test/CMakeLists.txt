set(TEST_SOURCE_FILES
    "test_App.cpp"
)

set(TEST_HEADER_FILES
)

add_executable("${CMAKE_PROJECT_NAME}_test"
    ${TEST_SOURCE_FILES}
    ${TEST_HEADER_FILES}
)

target_include_directories("${CMAKE_PROJECT_NAME}_test"
	PUBLIC
	CONAN_PKG::fmt
	CONAN_PKG::gtest
)

target_link_libraries("${CMAKE_PROJECT_NAME}_test" PUBLIC
   	CONAN_PKG::fmt
	CONAN_PKG::gtest
)