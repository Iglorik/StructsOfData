cmake_minimum_required(VERSION 2.6)

project(testStack)

set(CMAKE_BUILD_TYPE Release)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wpedantic")

file(GLOB
            CPPS "*.cpp")

add_executable(${PROJECT_NAME} ${CPPS})
