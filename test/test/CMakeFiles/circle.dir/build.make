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
include test/CMakeFiles/circle.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/circle.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/circle.dir/flags.make

test/CMakeFiles/circle.dir/circle.cpp.o: test/CMakeFiles/circle.dir/flags.make
test/CMakeFiles/circle.dir/circle.cpp.o: circle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/circle.dir/circle.cpp.o"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/circle.dir/circle.cpp.o -c /home/wlj/repository/wlj-study/test/circle.cpp

test/CMakeFiles/circle.dir/circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/circle.dir/circle.cpp.i"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/circle.cpp > CMakeFiles/circle.dir/circle.cpp.i

test/CMakeFiles/circle.dir/circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/circle.dir/circle.cpp.s"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/circle.cpp -o CMakeFiles/circle.dir/circle.cpp.s

test/CMakeFiles/circle.dir/circle.cpp.o.requires:

.PHONY : test/CMakeFiles/circle.dir/circle.cpp.o.requires

test/CMakeFiles/circle.dir/circle.cpp.o.provides: test/CMakeFiles/circle.dir/circle.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/circle.dir/build.make test/CMakeFiles/circle.dir/circle.cpp.o.provides.build
.PHONY : test/CMakeFiles/circle.dir/circle.cpp.o.provides

test/CMakeFiles/circle.dir/circle.cpp.o.provides.build: test/CMakeFiles/circle.dir/circle.cpp.o


# Object files for target circle
circle_OBJECTS = \
"CMakeFiles/circle.dir/circle.cpp.o"

# External object files for target circle
circle_EXTERNAL_OBJECTS =

test/circle: test/CMakeFiles/circle.dir/circle.cpp.o
test/circle: test/CMakeFiles/circle.dir/build.make
test/circle: test/CMakeFiles/circle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable circle"
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/circle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/circle.dir/build: test/circle

.PHONY : test/CMakeFiles/circle.dir/build

test/CMakeFiles/circle.dir/requires: test/CMakeFiles/circle.dir/circle.cpp.o.requires

.PHONY : test/CMakeFiles/circle.dir/requires

test/CMakeFiles/circle.dir/clean:
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -P CMakeFiles/circle.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/circle.dir/clean

test/CMakeFiles/circle.dir/depend:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/test /home/wlj/repository/wlj-study/test/test/CMakeFiles/circle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/circle.dir/depend
