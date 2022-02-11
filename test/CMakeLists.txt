# <<< test show version >>>
add_executable( test_add_app
    ${CMAKE_CURRENT_LIST_DIR}/test_add.c
)

target_include_directories( test_add_app
    PUBLIC
        ${CMAKE_HOME_DIRECTORY}/src
)

target_link_libraries( test_add_app
    add-static
)
