# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhihaow6/Desktop/cp1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhihaow6/Desktop/cp1/build

# Include any dependencies generated for this target.
include pass/CMakeFiles/SROA.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include pass/CMakeFiles/SROA.dir/compiler_depend.make

# Include the progress variables for this target.
include pass/CMakeFiles/SROA.dir/progress.make

# Include the compile flags for this target's objects.
include pass/CMakeFiles/SROA.dir/flags.make

pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o: pass/CMakeFiles/SROA.dir/flags.make
pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o: ../pass/ScalarReplAggregates-zhihaow6.cpp
pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o: pass/CMakeFiles/SROA.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhihaow6/Desktop/cp1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o"
	cd /home/zhihaow6/Desktop/cp1/build/pass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o -MF CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o.d -o CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o -c /home/zhihaow6/Desktop/cp1/pass/ScalarReplAggregates-zhihaow6.cpp

pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.i"
	cd /home/zhihaow6/Desktop/cp1/build/pass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhihaow6/Desktop/cp1/pass/ScalarReplAggregates-zhihaow6.cpp > CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.i

pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.s"
	cd /home/zhihaow6/Desktop/cp1/build/pass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhihaow6/Desktop/cp1/pass/ScalarReplAggregates-zhihaow6.cpp -o CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.s

# Object files for target SROA
SROA_OBJECTS = \
"CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o"

# External object files for target SROA
SROA_EXTERNAL_OBJECTS =

pass/libSROA.so: pass/CMakeFiles/SROA.dir/ScalarReplAggregates-zhihaow6.cpp.o
pass/libSROA.so: pass/CMakeFiles/SROA.dir/build.make
pass/libSROA.so: pass/CMakeFiles/SROA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhihaow6/Desktop/cp1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libSROA.so"
	cd /home/zhihaow6/Desktop/cp1/build/pass && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SROA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pass/CMakeFiles/SROA.dir/build: pass/libSROA.so
.PHONY : pass/CMakeFiles/SROA.dir/build

pass/CMakeFiles/SROA.dir/clean:
	cd /home/zhihaow6/Desktop/cp1/build/pass && $(CMAKE_COMMAND) -P CMakeFiles/SROA.dir/cmake_clean.cmake
.PHONY : pass/CMakeFiles/SROA.dir/clean

pass/CMakeFiles/SROA.dir/depend:
	cd /home/zhihaow6/Desktop/cp1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhihaow6/Desktop/cp1 /home/zhihaow6/Desktop/cp1/pass /home/zhihaow6/Desktop/cp1/build /home/zhihaow6/Desktop/cp1/build/pass /home/zhihaow6/Desktop/cp1/build/pass/CMakeFiles/SROA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pass/CMakeFiles/SROA.dir/depend
