cmake_minimum_required(VERSION 3.1)
project(ScalarReplAggregates-zhihaow6)

set(CMAKE_CXX_STANDARD 11)
find_package(LLVM 8 REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

add_subdirectory(pass)
