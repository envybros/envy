#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/core
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=core -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/core/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/core/opencl_kernels_core.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/core
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=core -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/core/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/core/opencl_kernels_core.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

