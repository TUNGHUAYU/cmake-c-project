# import CMake CTest module
include(CTest)

# <<< test >>>
enable_testing()

add_test(
    NAME "test_add"
    COMMAND $<TARGET_FILE:test_add_app>
)
