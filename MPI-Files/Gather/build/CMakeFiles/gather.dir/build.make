# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build

# Include any dependencies generated for this target.
include CMakeFiles/gather.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gather.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gather.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gather.dir/flags.make

CMakeFiles/gather.dir/gather.c.o: CMakeFiles/gather.dir/flags.make
CMakeFiles/gather.dir/gather.c.o: ../gather.c
CMakeFiles/gather.dir/gather.c.o: CMakeFiles/gather.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/gather.dir/gather.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/gather.dir/gather.c.o -MF CMakeFiles/gather.dir/gather.c.o.d -o CMakeFiles/gather.dir/gather.c.o -c /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/gather.c

CMakeFiles/gather.dir/gather.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gather.dir/gather.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/gather.c > CMakeFiles/gather.dir/gather.c.i

CMakeFiles/gather.dir/gather.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gather.dir/gather.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/gather.c -o CMakeFiles/gather.dir/gather.c.s

# Object files for target gather
gather_OBJECTS = \
"CMakeFiles/gather.dir/gather.c.o"

# External object files for target gather
gather_EXTERNAL_OBJECTS =

gather: CMakeFiles/gather.dir/gather.c.o
gather: CMakeFiles/gather.dir/build.make
gather: /leonardo/prod/spack/03/ccsdeploy/spack_deploy/envs/cineca-hpyc/.spack-env/view/lib/libmpi.so
gather: CMakeFiles/gather.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable gather"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gather.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gather.dir/build: gather
.PHONY : CMakeFiles/gather.dir/build

CMakeFiles/gather.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gather.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gather.dir/clean

CMakeFiles/gather.dir/depend:
	cd /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build /leonardo/home/userexternal/aorozco0/Parallel-Lennard-Jones/MPI-Files/Gather/build/CMakeFiles/gather.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gather.dir/depend

