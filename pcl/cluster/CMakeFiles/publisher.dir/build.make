# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/baxter/wd/pcl/cluster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/baxter/wd/pcl/cluster

# Include any dependencies generated for this target.
include CMakeFiles/publisher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/publisher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/publisher.dir/flags.make

CMakeFiles/publisher.dir/publisher.cpp.o: CMakeFiles/publisher.dir/flags.make
CMakeFiles/publisher.dir/publisher.cpp.o: publisher.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/baxter/wd/pcl/cluster/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/publisher.dir/publisher.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/publisher.dir/publisher.cpp.o -c /home/baxter/wd/pcl/cluster/publisher.cpp

CMakeFiles/publisher.dir/publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/publisher.dir/publisher.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/baxter/wd/pcl/cluster/publisher.cpp > CMakeFiles/publisher.dir/publisher.cpp.i

CMakeFiles/publisher.dir/publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/publisher.dir/publisher.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/baxter/wd/pcl/cluster/publisher.cpp -o CMakeFiles/publisher.dir/publisher.cpp.s

CMakeFiles/publisher.dir/publisher.cpp.o.requires:
.PHONY : CMakeFiles/publisher.dir/publisher.cpp.o.requires

CMakeFiles/publisher.dir/publisher.cpp.o.provides: CMakeFiles/publisher.dir/publisher.cpp.o.requires
	$(MAKE) -f CMakeFiles/publisher.dir/build.make CMakeFiles/publisher.dir/publisher.cpp.o.provides.build
.PHONY : CMakeFiles/publisher.dir/publisher.cpp.o.provides

CMakeFiles/publisher.dir/publisher.cpp.o.provides.build: CMakeFiles/publisher.dir/publisher.cpp.o

# Object files for target publisher
publisher_OBJECTS = \
"CMakeFiles/publisher.dir/publisher.cpp.o"

# External object files for target publisher
publisher_EXTERNAL_OBJECTS =

publisher: CMakeFiles/publisher.dir/publisher.cpp.o
publisher: CMakeFiles/publisher.dir/build.make
publisher: CMakeFiles/publisher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable publisher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/publisher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/publisher.dir/build: publisher
.PHONY : CMakeFiles/publisher.dir/build

CMakeFiles/publisher.dir/requires: CMakeFiles/publisher.dir/publisher.cpp.o.requires
.PHONY : CMakeFiles/publisher.dir/requires

CMakeFiles/publisher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/publisher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/publisher.dir/clean

CMakeFiles/publisher.dir/depend:
	cd /home/baxter/wd/pcl/cluster && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/baxter/wd/pcl/cluster /home/baxter/wd/pcl/cluster /home/baxter/wd/pcl/cluster /home/baxter/wd/pcl/cluster /home/baxter/wd/pcl/cluster/CMakeFiles/publisher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/publisher.dir/depend

