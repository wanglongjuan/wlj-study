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
include test/CMakeFiles/dowhile.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/dowhile.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/dowhile.dir/flags.make

test/CMakeFiles/dowhile.dir/dowhile.cpp.o: test/CMakeFiles/dowhile.dir/flags.make
test/CMakeFiles/dowhile.dir/dowhile.cpp.o: dowhile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/dowhile.dir/dowhile.cpp.o"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dowhile.dir/dowhile.cpp.o -c /home/wlj/repository/wlj-study/test/dowhile.cpp

test/CMakeFiles/dowhile.dir/dowhile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dowhile.dir/dowhile.cpp.i"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/dowhile.cpp > CMakeFiles/dowhile.dir/dowhile.cpp.i

test/CMakeFiles/dowhile.dir/dowhile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dowhile.dir/dowhile.cpp.s"
	cd /home/wlj/repository/wlj-study/test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/dowhile.cpp -o CMakeFiles/dowhile.dir/dowhile.cpp.s

test/CMakeFiles/dowhile.dir/dowhile.cpp.o.requires:

.PHONY : test/CMakeFiles/dowhile.dir/dowhile.cpp.o.requires

test/CMakeFiles/dowhile.dir/dowhile.cpp.o.provides: test/CMakeFiles/dowhile.dir/dowhile.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/dowhile.dir/build.make test/CMakeFiles/dowhile.dir/dowhile.cpp.o.provides.build
.PHONY : test/CMakeFiles/dowhile.dir/dowhile.cpp.o.provides

test/CMakeFiles/dowhile.dir/dowhile.cpp.o.provides.build: test/CMakeFiles/dowhile.dir/dowhile.cpp.o


# Object files for target dowhile
dowhile_OBJECTS = \
"CMakeFiles/dowhile.dir/dowhile.cpp.o"

# External object files for target dowhile
dowhile_EXTERNAL_OBJECTS =

test/dowhile: test/CMakeFiles/dowhile.dir/dowhile.cpp.o
test/dowhile: test/CMakeFiles/dowhile.dir/build.make
test/dowhile: test/CMakeFiles/dowhile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dowhile"
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dowhile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/dowhile.dir/build: test/dowhile

.PHONY : test/CMakeFiles/dowhile.dir/build

test/CMakeFiles/dowhile.dir/requires: test/CMakeFiles/dowhile.dir/dowhile.cpp.o.requires

.PHONY : test/CMakeFiles/dowhile.dir/requires

test/CMakeFiles/dowhile.dir/clean:
	cd /home/wlj/repository/wlj-study/test/test && $(CMAKE_COMMAND) -P CMakeFiles/dowhile.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/dowhile.dir/clean

test/CMakeFiles/dowhile.dir/depend:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/test /home/wlj/repository/wlj-study/test/test/CMakeFiles/dowhile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/dowhile.dir/depend

