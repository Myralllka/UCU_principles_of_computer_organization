cmake_minimum_required(VERSION 3.15)
project(midl C)

set(PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY  ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_C_STANDARD 99)

add_executable(midl src/main.c src/function.c src/function.h)
