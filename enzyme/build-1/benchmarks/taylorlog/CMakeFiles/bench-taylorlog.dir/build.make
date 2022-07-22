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
CMAKE_COMMAND = /local-scratch/localhome/mha157/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /local-scratch/localhome/mha157/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /localhome/mha157/Enzyme/enzyme

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /localhome/mha157/Enzyme/enzyme/build

# Utility rule file for bench-taylorlog.

# Include any custom commands dependencies for this target.
include benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/progress.make

benchmarks/taylorlog/CMakeFiles/bench-taylorlog:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/localhome/mha157/Enzyme/enzyme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running enzyme benchmarks tests"
	cd /localhome/mha157/Enzyme/enzyme/build/benchmarks/taylorlog && /local-scratch/localhome/mha157/llvm-project/llvm/utils/lit/lit.py -v -sv /localhome/mha157/Enzyme/enzyme/build/benchmarks/taylorlog

bench-taylorlog: benchmarks/taylorlog/CMakeFiles/bench-taylorlog
bench-taylorlog: benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/build.make
.PHONY : bench-taylorlog

# Rule to build all files generated by this target.
benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/build: bench-taylorlog
.PHONY : benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/build

benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/clean:
	cd /localhome/mha157/Enzyme/enzyme/build/benchmarks/taylorlog && $(CMAKE_COMMAND) -P CMakeFiles/bench-taylorlog.dir/cmake_clean.cmake
.PHONY : benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/clean

benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/depend:
	cd /localhome/mha157/Enzyme/enzyme/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /localhome/mha157/Enzyme/enzyme /localhome/mha157/Enzyme/enzyme/benchmarks/taylorlog /localhome/mha157/Enzyme/enzyme/build /localhome/mha157/Enzyme/enzyme/build/benchmarks/taylorlog /localhome/mha157/Enzyme/enzyme/build/benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/taylorlog/CMakeFiles/bench-taylorlog.dir/depend
