# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/jaco/workspace-platanus-build-night/local

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jaco/workspace-platanus-build-night/local/build2

# Include any dependencies generated for this target.
include ggml/src/CMakeFiles/ggml.dir/depend.make

# Include the progress variables for this target.
include ggml/src/CMakeFiles/ggml.dir/progress.make

# Include the compile flags for this target's objects.
include ggml/src/CMakeFiles/ggml.dir/flags.make

ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o: ggml/src/CMakeFiles/ggml.dir/flags.make
ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o: ggml/src/CMakeFiles/ggml.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o: ../ggml/src/ggml-backend-reg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-backend-reg.cpp

ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml.dir/ggml-backend-reg.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-backend-reg.cpp > CMakeFiles/ggml.dir/ggml-backend-reg.cpp.i

ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml.dir/ggml-backend-reg.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-backend-reg.cpp -o CMakeFiles/ggml.dir/ggml-backend-reg.cpp.s

# Object files for target ggml
ggml_OBJECTS = \
"CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o"

# External object files for target ggml
ggml_EXTERNAL_OBJECTS =

ggml/src/libggml.a: ggml/src/CMakeFiles/ggml.dir/ggml-backend-reg.cpp.o
ggml/src/libggml.a: ggml/src/CMakeFiles/ggml.dir/build.make
ggml/src/libggml.a: ggml/src/CMakeFiles/ggml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libggml.a"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -P CMakeFiles/ggml.dir/cmake_clean_target.cmake
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ggml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ggml/src/CMakeFiles/ggml.dir/build: ggml/src/libggml.a

.PHONY : ggml/src/CMakeFiles/ggml.dir/build

ggml/src/CMakeFiles/ggml.dir/clean:
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -P CMakeFiles/ggml.dir/cmake_clean.cmake
.PHONY : ggml/src/CMakeFiles/ggml.dir/clean

ggml/src/CMakeFiles/ggml.dir/depend:
	cd /home/jaco/workspace-platanus-build-night/local/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jaco/workspace-platanus-build-night/local /home/jaco/workspace-platanus-build-night/local/ggml/src /home/jaco/workspace-platanus-build-night/local/build2 /home/jaco/workspace-platanus-build-night/local/build2/ggml/src /home/jaco/workspace-platanus-build-night/local/build2/ggml/src/CMakeFiles/ggml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ggml/src/CMakeFiles/ggml.dir/depend

