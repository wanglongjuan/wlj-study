# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/wlj/repository/wlj-study

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wlj/repository/wlj-study/test

# Include any dependencies generated for this target.
include test/CMakeFiles/min.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/min.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/min.dir/flags.make

test/CMakeFiles/min.dir/min.cpp.o: test/CMakeFiles/min.dir/flags.make
test/CMakeFiles/min.dir/min.cpp.o: min.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/min.dir/min.cpp.o"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/min.dir/min.cpp.o -c /home/wlj/repository/wlj-study/test/min.cpp

test/CMakeFiles/min.dir/min.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min.dir/min.cpp.i"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/min.cpp > CMakeFiles/min.dir/min.cpp.i

test/CMakeFiles/min.dir/min.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min.dir/min.cpp.s"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/min.cpp -o CMakeFiles/min.dir/min.cpp.s

test/CMakeFiles/min.dir/min.cpp.o.requires:

.PHONY : test/CMakeFiles/min.dir/min.cpp.o.requires

test/CMakeFiles/min.dir/min.cpp.o.provides: test/CMakeFiles/min.dir/min.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/min.dir/build.make test/CMakeFiles/min.dir/min.cpp.o.provides.build
.PHONY : test/CMakeFiles/min.dir/min.cpp.o.provides

test/CMakeFiles/min.dir/min.cpp.o.provides.build: test/CMakeFiles/min.dir/min.cpp.o


# Object files for target min
min_OBJECTS = \
"CMakeFiles/min.dir/min.cpp.o"

# External object files for target min
min_EXTERNAL_OBJECTS =

test/min: test/CMakeFiles/min.dir/min.cpp.o
test/min: test/CMakeFiles/min.dir/build.make
test/min: test/CMakeFiles/min.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable min"
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/min.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/min.dir/build: test/min

.PHONY : test/CMakeFiles/min.dir/build

test/CMakeFiles/min.dir/requires: test/CMakeFiles/min.dir/min.cpp.o.requires

.PHONY : test/CMakeFiles/min.dir/requires

test/CMakeFiles/min.dir/clean:
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -P CMakeFiles/min.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/min.dir/clean

test/CMakeFiles/min.dir/depend:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/test /home/wlj/repository/wlj-study/test/test/CMakeFiles/min.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/min.dir/depend

