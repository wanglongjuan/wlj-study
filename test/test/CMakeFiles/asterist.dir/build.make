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
include test/CMakeFiles/asterist.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/asterist.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/asterist.dir/flags.make

test/CMakeFiles/asterist.dir/asterist.cpp.o: test/CMakeFiles/asterist.dir/flags.make
test/CMakeFiles/asterist.dir/asterist.cpp.o: asterist.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/asterist.dir/asterist.cpp.o"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asterist.dir/asterist.cpp.o -c /home/wlj/repository/wlj-study/test/asterist.cpp

test/CMakeFiles/asterist.dir/asterist.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asterist.dir/asterist.cpp.i"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/asterist.cpp > CMakeFiles/asterist.dir/asterist.cpp.i

test/CMakeFiles/asterist.dir/asterist.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asterist.dir/asterist.cpp.s"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/asterist.cpp -o CMakeFiles/asterist.dir/asterist.cpp.s

test/CMakeFiles/asterist.dir/asterist.cpp.o.requires:

.PHONY : test/CMakeFiles/asterist.dir/asterist.cpp.o.requires

test/CMakeFiles/asterist.dir/asterist.cpp.o.provides: test/CMakeFiles/asterist.dir/asterist.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/asterist.dir/build.make test/CMakeFiles/asterist.dir/asterist.cpp.o.provides.build
.PHONY : test/CMakeFiles/asterist.dir/asterist.cpp.o.provides

test/CMakeFiles/asterist.dir/asterist.cpp.o.provides.build: test/CMakeFiles/asterist.dir/asterist.cpp.o


# Object files for target asterist
asterist_OBJECTS = \
"CMakeFiles/asterist.dir/asterist.cpp.o"

# External object files for target asterist
asterist_EXTERNAL_OBJECTS =

test/asterist: test/CMakeFiles/asterist.dir/asterist.cpp.o
test/asterist: test/CMakeFiles/asterist.dir/build.make
test/asterist: test/CMakeFiles/asterist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable asterist"
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asterist.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/asterist.dir/build: test/asterist

.PHONY : test/CMakeFiles/asterist.dir/build

test/CMakeFiles/asterist.dir/requires: test/CMakeFiles/asterist.dir/asterist.cpp.o.requires

.PHONY : test/CMakeFiles/asterist.dir/requires

test/CMakeFiles/asterist.dir/clean:
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -P CMakeFiles/asterist.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/asterist.dir/clean

test/CMakeFiles/asterist.dir/depend:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/test /home/wlj/repository/wlj-study/test/test/CMakeFiles/asterist.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/asterist.dir/depend

