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
CMAKE_BINARY_DIR = /home/wlj/repository/wlj-study

# Include any dependencies generated for this target.
include test/CMakeFiles/6.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/6.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/6.dir/flags.make

test/CMakeFiles/6.dir/6.cpp.o: test/CMakeFiles/6.dir/flags.make
test/CMakeFiles/6.dir/6.cpp.o: test/6.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/6.dir/6.cpp.o"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/6.dir/6.cpp.o -c /home/wlj/repository/wlj-study/test/6.cpp

test/CMakeFiles/6.dir/6.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/6.dir/6.cpp.i"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/6.cpp > CMakeFiles/6.dir/6.cpp.i

test/CMakeFiles/6.dir/6.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/6.dir/6.cpp.s"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/6.cpp -o CMakeFiles/6.dir/6.cpp.s

test/CMakeFiles/6.dir/6.cpp.o.requires:

.PHONY : test/CMakeFiles/6.dir/6.cpp.o.requires

test/CMakeFiles/6.dir/6.cpp.o.provides: test/CMakeFiles/6.dir/6.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/6.dir/build.make test/CMakeFiles/6.dir/6.cpp.o.provides.build
.PHONY : test/CMakeFiles/6.dir/6.cpp.o.provides

test/CMakeFiles/6.dir/6.cpp.o.provides.build: test/CMakeFiles/6.dir/6.cpp.o


# Object files for target 6
6_OBJECTS = \
"CMakeFiles/6.dir/6.cpp.o"

# External object files for target 6
6_EXTERNAL_OBJECTS =

test/6: test/CMakeFiles/6.dir/6.cpp.o
test/6: test/CMakeFiles/6.dir/build.make
test/6: test/CMakeFiles/6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 6"
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/6.dir/build: test/6

.PHONY : test/CMakeFiles/6.dir/build

test/CMakeFiles/6.dir/requires: test/CMakeFiles/6.dir/6.cpp.o.requires

.PHONY : test/CMakeFiles/6.dir/requires

test/CMakeFiles/6.dir/clean:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -P CMakeFiles/6.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/6.dir/clean

test/CMakeFiles/6.dir/depend:
	cd /home/wlj/repository/wlj-study && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/CMakeFiles/6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/6.dir/depend

