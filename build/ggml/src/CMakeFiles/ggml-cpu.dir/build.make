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
include ggml/src/CMakeFiles/ggml-cpu.dir/depend.make

# Include the progress variables for this target.
include ggml/src/CMakeFiles/ggml-cpu.dir/progress.make

# Include the compile flags for this target's objects.
include ggml/src/CMakeFiles/ggml-cpu.dir/flags.make

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_C.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o: ../ggml/src/ggml-cpu/ggml-cpu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o   -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.c

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.c > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.c -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o: ../ggml/src/ggml-cpu/ggml-cpu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o: ../ggml/src/ggml-cpu/ggml-cpu-aarch64.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-aarch64.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-aarch64.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-aarch64.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o: ../ggml/src/ggml-cpu/ggml-cpu-hbm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-hbm.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-hbm.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-hbm.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_C.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o: ../ggml/src/ggml-cpu/ggml-cpu-quants.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o   -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-quants.c

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-quants.c > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-quants.c -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o: ../ggml/src/ggml-cpu/ggml-cpu-traits.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-traits.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-traits.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ggml-cpu-traits.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o: ../ggml/src/ggml-cpu/amx/amx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/amx.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/amx.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/amx.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o: ../ggml/src/ggml-cpu/amx/mmq.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/mmq.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/mmq.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/amx/mmq.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o: ../ggml/src/ggml-cpu/binary-ops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/binary-ops.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/binary-ops.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/binary-ops.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o: ../ggml/src/ggml-cpu/unary-ops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/unary-ops.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/unary-ops.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/unary-ops.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o: ../ggml/src/ggml-cpu/vec.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/vec.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/vec.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/vec.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.s

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/flags.make
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o: ggml/src/CMakeFiles/ggml-cpu.dir/includes_CXX.rsp
ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o: ../ggml/src/ggml-cpu/ops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o -c /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ops.cpp

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.i"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ops.cpp > CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.i

ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.s"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && /home/jaco/Downloads/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaco/workspace-platanus-build-night/local/ggml/src/ggml-cpu/ops.cpp -o CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.s

# Object files for target ggml-cpu
ggml__cpu_OBJECTS = \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o" \
"CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o"

# External object files for target ggml-cpu
ggml__cpu_EXTERNAL_OBJECTS =

ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.c.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-aarch64.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-hbm.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-quants.c.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ggml-cpu-traits.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/amx.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/amx/mmq.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/binary-ops.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/unary-ops.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/vec.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/ggml-cpu/ops.cpp.o
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/build.make
ggml/src/libggml-cpu.a: ggml/src/CMakeFiles/ggml-cpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jaco/workspace-platanus-build-night/local/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libggml-cpu.a"
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -P CMakeFiles/ggml-cpu.dir/cmake_clean_target.cmake
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ggml-cpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ggml/src/CMakeFiles/ggml-cpu.dir/build: ggml/src/libggml-cpu.a

.PHONY : ggml/src/CMakeFiles/ggml-cpu.dir/build

ggml/src/CMakeFiles/ggml-cpu.dir/clean:
	cd /home/jaco/workspace-platanus-build-night/local/build2/ggml/src && $(CMAKE_COMMAND) -P CMakeFiles/ggml-cpu.dir/cmake_clean.cmake
.PHONY : ggml/src/CMakeFiles/ggml-cpu.dir/clean

ggml/src/CMakeFiles/ggml-cpu.dir/depend:
	cd /home/jaco/workspace-platanus-build-night/local/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jaco/workspace-platanus-build-night/local /home/jaco/workspace-platanus-build-night/local/ggml/src /home/jaco/workspace-platanus-build-night/local/build2 /home/jaco/workspace-platanus-build-night/local/build2/ggml/src /home/jaco/workspace-platanus-build-night/local/build2/ggml/src/CMakeFiles/ggml-cpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ggml/src/CMakeFiles/ggml-cpu.dir/depend

