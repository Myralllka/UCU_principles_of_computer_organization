cmake_minimum_required(VERSION 3.14n)

project(lab1)

set (PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set (LIBRARY_OUTPUT_PATH ${EXECUTABLE_OUTPUT_PATH})

set (SRC_FILES blocksort.c bzlib.c bzlib.h bzlib_private.h compress.c crctable.c decompress.c huffman.c randtable.c)

add_library(bz STATIC ${SRC_FILES})
add_library(bz-shared SHARED ${SRC_FILES})
set_target_properties(bz-shared PROPERTIES OUTPUT_NAME bz)

