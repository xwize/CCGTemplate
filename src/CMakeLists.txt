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

target_link_libraries("${CMAKE_PROJECT_NAME}"
    PUBLIC tl::expected
    PRIVATE CCGTemplate_options
)
