cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(CMAKE_C_PROJECT
    LANGUAGES C
    VERSION 0.0.1
)


# <<< create test executable files >>>

add_subdirectory("src")
add_subdirectory("test")

include("cmake/install.cmake")
include("cmake/test.cmake")
