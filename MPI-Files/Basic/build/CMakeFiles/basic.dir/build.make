# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build

# Include any dependencies generated for this target.
include CMakeFiles/basic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/basic.dir/flags.make

CMakeFiles/basic.dir/basic.c.o: CMakeFiles/basic.dir/flags.make
CMakeFiles/basic.dir/basic.c.o: ../basic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/basic.dir/basic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/basic.dir/basic.c.o   -c /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/basic.c

CMakeFiles/basic.dir/basic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/basic.dir/basic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/basic.c > CMakeFiles/basic.dir/basic.c.i

CMakeFiles/basic.dir/basic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/basic.dir/basic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/basic.c -o CMakeFiles/basic.dir/basic.c.s

# Object files for target basic
basic_OBJECTS = \
"CMakeFiles/basic.dir/basic.c.o"

# External object files for target basic
basic_EXTERNAL_OBJECTS =

basic: CMakeFiles/basic.dir/basic.c.o
basic: CMakeFiles/basic.dir/build.make
basic: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
basic: CMakeFiles/basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable basic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/basic.dir/build: basic

.PHONY : CMakeFiles/basic.dir/build

CMakeFiles/basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/basic.dir/clean

CMakeFiles/basic.dir/depend:
	cd /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build /home/adob/WorkStationDrive/Investigation/DEV/Parallel-Lennard-Jones/MPI-Files/Basic/build/CMakeFiles/basic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/basic.dir/depend

