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
include test/CMakeFiles/daoshu.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/daoshu.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/daoshu.dir/flags.make

test/CMakeFiles/daoshu.dir/daoshu.cpp.o: test/CMakeFiles/daoshu.dir/flags.make
test/CMakeFiles/daoshu.dir/daoshu.cpp.o: test/daoshu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/daoshu.dir/daoshu.cpp.o"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/daoshu.dir/daoshu.cpp.o -c /home/wlj/repository/wlj-study/test/daoshu.cpp

test/CMakeFiles/daoshu.dir/daoshu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/daoshu.dir/daoshu.cpp.i"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlj/repository/wlj-study/test/daoshu.cpp > CMakeFiles/daoshu.dir/daoshu.cpp.i

test/CMakeFiles/daoshu.dir/daoshu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/daoshu.dir/daoshu.cpp.s"
	cd /home/wlj/repository/wlj-study/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlj/repository/wlj-study/test/daoshu.cpp -o CMakeFiles/daoshu.dir/daoshu.cpp.s

test/CMakeFiles/daoshu.dir/daoshu.cpp.o.requires:

.PHONY : test/CMakeFiles/daoshu.dir/daoshu.cpp.o.requires

test/CMakeFiles/daoshu.dir/daoshu.cpp.o.provides: test/CMakeFiles/daoshu.dir/daoshu.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/daoshu.dir/build.make test/CMakeFiles/daoshu.dir/daoshu.cpp.o.provides.build
.PHONY : test/CMakeFiles/daoshu.dir/daoshu.cpp.o.provides

test/CMakeFiles/daoshu.dir/daoshu.cpp.o.provides.build: test/CMakeFiles/daoshu.dir/daoshu.cpp.o


# Object files for target daoshu
daoshu_OBJECTS = \
"CMakeFiles/daoshu.dir/daoshu.cpp.o"

# External object files for target daoshu
daoshu_EXTERNAL_OBJECTS =

test/daoshu: test/CMakeFiles/daoshu.dir/daoshu.cpp.o
test/daoshu: test/CMakeFiles/daoshu.dir/build.make
test/daoshu: test/CMakeFiles/daoshu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlj/repository/wlj-study/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable daoshu"
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/daoshu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/daoshu.dir/build: test/daoshu

.PHONY : test/CMakeFiles/daoshu.dir/build

test/CMakeFiles/daoshu.dir/requires: test/CMakeFiles/daoshu.dir/daoshu.cpp.o.requires

.PHONY : test/CMakeFiles/daoshu.dir/requires

test/CMakeFiles/daoshu.dir/clean:
	cd /home/wlj/repository/wlj-study/test && $(CMAKE_COMMAND) -P CMakeFiles/daoshu.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/daoshu.dir/clean

test/CMakeFiles/daoshu.dir/depend:
	cd /home/wlj/repository/wlj-study && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study /home/wlj/repository/wlj-study/test /home/wlj/repository/wlj-study/test/CMakeFiles/daoshu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/daoshu.dir/depend

