cmake_minimum_required(VERSION 3.22.1)

project("bicycle-computer" LANGUAGES C ASM)
set(CMAKE_VERBOSE_MAKEFILE 1)
add_definitions(-D__NO_SYSTEM_INIT=1)
set(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/"gcc.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT}")
add_executable(${PROJECT_NAME} isr_vector.S start.S main.c )
