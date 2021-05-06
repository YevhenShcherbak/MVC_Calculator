cmake_minimum_required(VERSION 3.0)
project(MVC_Calculator VERSION 0.01 DESCRIPTION "MVC pattern calculator" LANGUAGES CXX)


set(SOURCES Calculator_Example.cpp src/Calculator.cpp src/CalculatorController.cpp src/CalculatorView.cpp include/Calculator.h include/CalculatorController.h include/CalculatorView.h)
add_executable(MVC_Calculator ${SOURCES})
include_directories(MVC_Calculator C:/Users/Evgeny/Desktop/MVC_Calculator/include/)