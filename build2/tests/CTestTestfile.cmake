# CMake generated Testfile for 
# Source directory: /home/jaco/workspace-platanus-build-night/local/tests
# Build directory: /home/jaco/workspace-platanus-build-night/local/build2/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-whisper-js "node" "test-whisper.js" "--experimental-wasm-threads")
set_tests_properties(test-whisper-js PROPERTIES  WORKING_DIRECTORY "/home/jaco/workspace-platanus-build-night/local/tests" _BACKTRACE_TRIPLES "/home/jaco/workspace-platanus-build-night/local/tests/CMakeLists.txt;7;add_test;/home/jaco/workspace-platanus-build-night/local/tests/CMakeLists.txt;0;")
