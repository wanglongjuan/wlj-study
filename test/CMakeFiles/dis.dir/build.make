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
include test/CMakeFiles/dis.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/dis.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/dis.dir/flags.make

test/CMakeFiles/dis.dir/dis.cpp.o: test/CMakeFiles/dis.dir/flags.make
test/CMakeFiles/dis.dir/dis.cpp.o: test/dis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/dis.dir/dis.cpp.o"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dis.dir/dis.cpp.o -c /home/wlj/repository/wlj-study/test/dis.cpp

test/CMakeFiles/dis.dir/dis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dis.dir/dis.cpp.i"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/dis.cpp > CMakeFiles/dis.dir/dis.cpp.i

test/CMakeFiles/dis.dir/dis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dis.dir/dis.cpp.s"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/dis.cpp -o CMakeFiles/dis.dir/dis.cpp.s

test/CMakeFiles/dis.dir/dis.cpp.o.requires:

.PHONY : test/CMakeFiles/dis.dir/dis.cpp.o.requires

test/CMakeFiles/dis.dir/dis.cpp.o.provides: test/CMakeFiles/dis.dir/dis.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/dis.dir/build.make test/CMakeFiles/dis.dir/dis.cpp.o.provides.build
.PHONY : test/CMakeFiles/dis.dir/dis.cpp.o.provides

test/CMakeFiles/dis.dir/dis.cpp.o.provides.build: test/CMakeFiles/dis.dir/dis.cpp.o


# Object files for target dis
dis_OBJECTS = \
"CMakeFiles/dis.dir/dis.cpp.o"

# External object files for target dis
dis_EXTERNAL_OBJECTS =

test/dis: test/CMakeFiles/dis.dir/dis.cpp.o
test/dis: test/CMakeFiles/dis.dir/build.make
test/dis: test/CMakeFiles/dis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dis"
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/dis.dir/build: test/dis

.PHONY : test/CMakeFiles/dis.dir/build

test/CMakeFiles/dis.dir/requires: test/CMakeFiles/dis.dir/dis.cpp.o.requires

.PHONY : test/CMakeFiles/dis.dir/requires

test/CMakeFiles/dis.dir/clean:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -P CMakeFiles/dis.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/dis.dir/clean

test/CMakeFiles/dis.dir/depend:
	cd /home/wlj/repository/wlj-study && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/CMakeFiles/dis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/dis.dir/depend

