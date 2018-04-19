cmake_minimum_required(VERSION 3.9)
project(mserver)

set(CMAKE_CXX_STANDARD 11)

add_executable(mserver main.cpp mserver.cpp mserver.h)