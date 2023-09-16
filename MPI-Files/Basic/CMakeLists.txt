# cmake
cmake_minimum_required(VERSION 3.10)

# project
project(basic-mpi VERSION 1.0 LANGUAGES C)

# MPI
find_package(MPI REQUIRED)

# Executable
add_executable(basic basic.c)
target_link_libraries(basic PRIVATE MPI::MPI_C)