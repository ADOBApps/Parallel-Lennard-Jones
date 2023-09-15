#cmake
cmake_minimum_required(VERSION 3.10)

# PROJET
project(mpi-gather VERSION 1.0 LANGUAGES C)

# MPI
find_package(MPI REQUIRED)

#EXE
add_executable(gather gather.c)
target_link_libraries(gather PRIVATE MPI::MPI_C)