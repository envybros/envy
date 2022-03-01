#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/features2d
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=features2d -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/features2d/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/features2d/opencl_kernels_features2d.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/features2d
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=features2d -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/features2d/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/features2d/opencl_kernels_features2d.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

