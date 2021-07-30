cmake_minimum_required(VERSION 3.0)
project(MVC_Calculator VERSION 0.01 DESCRIPTION "MVC pattern calculator" LANGUAGES CXX)

SET (CMAKE_VERBOSE_MAKEFILE 1)
set(SOURCESServer CalculatorServer.cpp src/Calculator.cpp src/CalculatorController.cpp src/CalculatorView.cpp)
set(SOURCESClient CalculatorClient.cpp)
include_directories(MVC_Calculator C:/Users/Evgeny/Desktop/MVC_Calculator/include/)
add_executable(CalculatorServer ${SOURCESServer})
add_executable(CalculatorClient ${SOURCESClient})
target_link_libraries(CalculatorServer rt)
target_link_libraries(CalculatorClient rt)


