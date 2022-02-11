# <<< create library >>>

## create object container which archive all objects
add_library(add-objs
    OBJECT
        add.c
        add.h
)

## create shared library
add_library(add-shared
    SHARED
        $<TARGET_OBJECTS:add-objs>
)

set_target_properties(add-shared
    PROPERTIES
        VERSION ${PROJECT_VERSION}
        OUTPUT_NAME "my_add"
        PUBLIC_HEADER "${CMAKE_CURRENT_SOURCE_DIR}/add.h"
        DEBUG_POSTFIX "_d"
        RELEASE_POSTFIX "_r"    
)

## create static library
add_library(add-static
    STATIC
        $<TARGET_OBJECTS:add-objs>
)

set_target_properties(add-static
    PROPERTIES
        VERSION ${PROJECT_VERSION}
        OUTPUT_NAME "my_add"
        PUBLIC_HEADER "${CMAKE_CURRENT_SOURCE_DIR}/add.h"
        DEBUG_POSTFIX "_d"
        RELEASE_POSTFIX "_r"
)