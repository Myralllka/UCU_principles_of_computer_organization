cmake_minimum_required(VERSION 3.14)

project(lab1)


SET(CMAKE_VERBOSE_MAKEFILE ON)

set (PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set (LIBRARY_OUTPUT_PATH ${EXECUTABLE_OUTPUT_PATH})

set (SRC_FILES blocksort.c bzlib.c bzlib.h bzlib_private.h compress.c crctable.c decompress.c huffman.c randtable.c)

add_executable (hello)
add_library (bzip2 SHARED ${SRC_FILES})
add_library(bzip2 STATIC ${SRC_FILES})

#ADD_EXECUTABLE(hello1 file1.cpp file2.cpp main_file.cpp file1.h file2.h)
