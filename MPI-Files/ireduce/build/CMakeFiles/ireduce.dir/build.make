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
CMAKE_SOURCE_DIR = /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build

# Include any dependencies generated for this target.
include CMakeFiles/ireduce.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ireduce.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ireduce.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ireduce.dir/flags.make

CMakeFiles/ireduce.dir/ireduce.c.o: CMakeFiles/ireduce.dir/flags.make
CMakeFiles/ireduce.dir/ireduce.c.o: ../ireduce.c
CMakeFiles/ireduce.dir/ireduce.c.o: CMakeFiles/ireduce.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ireduce.dir/ireduce.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ireduce.dir/ireduce.c.o -MF CMakeFiles/ireduce.dir/ireduce.c.o.d -o CMakeFiles/ireduce.dir/ireduce.c.o -c /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/ireduce.c

CMakeFiles/ireduce.dir/ireduce.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ireduce.dir/ireduce.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/ireduce.c > CMakeFiles/ireduce.dir/ireduce.c.i

CMakeFiles/ireduce.dir/ireduce.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ireduce.dir/ireduce.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/ireduce.c -o CMakeFiles/ireduce.dir/ireduce.c.s

# Object files for target ireduce
ireduce_OBJECTS = \
"CMakeFiles/ireduce.dir/ireduce.c.o"

# External object files for target ireduce
ireduce_EXTERNAL_OBJECTS =

ireduce: CMakeFiles/ireduce.dir/ireduce.c.o
ireduce: CMakeFiles/ireduce.dir/build.make
ireduce: /leonardo/prod/spack/03/ccsdeploy/spack_deploy/envs/cineca-hpyc/.spack-env/view/lib/libmpi.so
ireduce: CMakeFiles/ireduce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ireduce"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ireduce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ireduce.dir/build: ireduce
.PHONY : CMakeFiles/ireduce.dir/build

CMakeFiles/ireduce.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ireduce.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ireduce.dir/clean

CMakeFiles/ireduce.dir/depend:
	cd /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build /leonardo/home/userexternal/aorozco0/SMR3872-Colombia-Mine/MyFiles/ireduce/build/CMakeFiles/ireduce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ireduce.dir/depend

