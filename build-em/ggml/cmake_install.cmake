# Install script for directory: /home/jaco/workspace-platanus-build-night/whisper-web/ggml

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jaco/Downloads/emsdk/upstream/emscripten/cache/sysroot")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/src/libggml.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-cpu.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-alloc.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-backend.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-blas.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-cann.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-cpp.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-cuda.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-kompute.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-opt.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-metal.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-rpc.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-sycl.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/ggml-vulkan.h"
    "/home/jaco/workspace-platanus-build-night/whisper-web/ggml/include/gguf.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/src/libggml-base.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ggml" TYPE FILE FILES
    "/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/ggml-config.cmake"
    "/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/ggml-version.cmake"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/jaco/workspace-platanus-build-night/whisper-web/build-em/ggml/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
