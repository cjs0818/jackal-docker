# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /root/Shared_folder/ouster_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Shared_folder/ouster_example/build

# Include any dependencies generated for this target.
include ouster_pcap/CMakeFiles/ouster_pcap.dir/depend.make

# Include the progress variables for this target.
include ouster_pcap/CMakeFiles/ouster_pcap.dir/progress.make

# Include the compile flags for this target's objects.
include ouster_pcap/CMakeFiles/ouster_pcap.dir/flags.make

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o: ouster_pcap/CMakeFiles/ouster_pcap.dir/flags.make
ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o: ../ouster_pcap/src/os_pcap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Shared_folder/ouster_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o"
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o -c /root/Shared_folder/ouster_example/ouster_pcap/src/os_pcap.cpp

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.i"
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Shared_folder/ouster_example/ouster_pcap/src/os_pcap.cpp > CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.i

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.s"
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Shared_folder/ouster_example/ouster_pcap/src/os_pcap.cpp -o CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.s

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.requires:

.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.requires

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.provides: ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.requires
	$(MAKE) -f ouster_pcap/CMakeFiles/ouster_pcap.dir/build.make ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.provides.build
.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.provides

ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.provides.build: ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o


# Object files for target ouster_pcap
ouster_pcap_OBJECTS = \
"CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o"

# External object files for target ouster_pcap
ouster_pcap_EXTERNAL_OBJECTS =

ouster_pcap/libouster_pcap.a: ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o
ouster_pcap/libouster_pcap.a: ouster_pcap/CMakeFiles/ouster_pcap.dir/build.make
ouster_pcap/libouster_pcap.a: ouster_pcap/CMakeFiles/ouster_pcap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Shared_folder/ouster_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libouster_pcap.a"
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && $(CMAKE_COMMAND) -P CMakeFiles/ouster_pcap.dir/cmake_clean_target.cmake
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ouster_pcap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ouster_pcap/CMakeFiles/ouster_pcap.dir/build: ouster_pcap/libouster_pcap.a

.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/build

ouster_pcap/CMakeFiles/ouster_pcap.dir/requires: ouster_pcap/CMakeFiles/ouster_pcap.dir/src/os_pcap.cpp.o.requires

.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/requires

ouster_pcap/CMakeFiles/ouster_pcap.dir/clean:
	cd /root/Shared_folder/ouster_example/build/ouster_pcap && $(CMAKE_COMMAND) -P CMakeFiles/ouster_pcap.dir/cmake_clean.cmake
.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/clean

ouster_pcap/CMakeFiles/ouster_pcap.dir/depend:
	cd /root/Shared_folder/ouster_example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Shared_folder/ouster_example /root/Shared_folder/ouster_example/ouster_pcap /root/Shared_folder/ouster_example/build /root/Shared_folder/ouster_example/build/ouster_pcap /root/Shared_folder/ouster_example/build/ouster_pcap/CMakeFiles/ouster_pcap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ouster_pcap/CMakeFiles/ouster_pcap.dir/depend

