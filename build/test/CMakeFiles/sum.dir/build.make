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
CMAKE_BINARY_DIR = /home/wlj/repository/wlj-study/build

# Include any dependencies generated for this target.
include test/CMakeFiles/sum.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sum.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sum.dir/flags.make

test/CMakeFiles/sum.dir/sum.cpp.o: test/CMakeFiles/sum.dir/flags.make
test/CMakeFiles/sum.dir/sum.cpp.o: ../test/sum.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/sum.dir/sum.cpp.o"
	cd /home/wlj/repository/wlj-study/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sum.dir/sum.cpp.o -c /home/wlj/repository/wlj-study/test/sum.cpp

test/CMakeFiles/sum.dir/sum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sum.dir/sum.cpp.i"
	cd /home/wlj/repository/wlj-study/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/sum.cpp > CMakeFiles/sum.dir/sum.cpp.i

test/CMakeFiles/sum.dir/sum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sum.dir/sum.cpp.s"
	cd /home/wlj/repository/wlj-study/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/sum.cpp -o CMakeFiles/sum.dir/sum.cpp.s

test/CMakeFiles/sum.dir/sum.cpp.o.requires:

.PHONY : test/CMakeFiles/sum.dir/sum.cpp.o.requires

test/CMakeFiles/sum.dir/sum.cpp.o.provides: test/CMakeFiles/sum.dir/sum.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/sum.dir/build.make test/CMakeFiles/sum.dir/sum.cpp.o.provides.build
.PHONY : test/CMakeFiles/sum.dir/sum.cpp.o.provides

test/CMakeFiles/sum.dir/sum.cpp.o.provides.build: test/CMakeFiles/sum.dir/sum.cpp.o


# Object files for target sum
sum_OBJECTS = \
"CMakeFiles/sum.dir/sum.cpp.o"

# External object files for target sum
sum_EXTERNAL_OBJECTS =

test/sum: test/CMakeFiles/sum.dir/sum.cpp.o
test/sum: test/CMakeFiles/sum.dir/build.make
test/sum: test/CMakeFiles/sum.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sum"
	cd /home/wlj/repository/wlj-study/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sum.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sum.dir/build: test/sum

.PHONY : test/CMakeFiles/sum.dir/build

test/CMakeFiles/sum.dir/requires: test/CMakeFiles/sum.dir/sum.cpp.o.requires

.PHONY : test/CMakeFiles/sum.dir/requires

test/CMakeFiles/sum.dir/clean:
	cd /home/wlj/repository/wlj-study/build/test && $(CMAKE_COMMAND) -P CMakeFiles/sum.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sum.dir/clean

test/CMakeFiles/sum.dir/depend:
	cd /home/wlj/repository/wlj-study/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/build /home/wlj/repository/wlj-study/build/test /home/wlj/repository/wlj-study/build/test/CMakeFiles/sum.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sum.dir/depend

