# Cmake
cmake_minimum_required(VERSION 3.10)

# Project
project(mpi-file VERSION 0.1 LANGUAGES C)
# MPI
find_package(MPI REQUIRED)
# EXECUTABLES
add_executable(mpi-file mpi-file.c)
target_link_libraries(mpi-file PRIVATE MPI::MPI_C)