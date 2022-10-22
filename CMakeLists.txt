cmake_minimum_required(VERSION 3.22.1)

project("bicycle-computer" LANGUAGES C ASM)
set(CMAKE_VERBOSE_MAKEFILE 1)
add_executable(${PROJECT_NAME} start.S main.c)
