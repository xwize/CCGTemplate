set(TEST_SOURCE_FILES
    "test_App.cpp"
)

set(TEST_HEADER_FILES
)

add_executable("${CMAKE_PROJECT_NAME}_test"
    ${TEST_SOURCE_FILES}
    ${TEST_HEADER_FILES}
    ../src/App.cpp
)

target_link_libraries("${CMAKE_PROJECT_NAME}_test"
    PUBLIC tl::expected gtest gtest_main
    PRIVATE CCGTemplate_options
)
