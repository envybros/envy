#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/stitching
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=stitching -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/stitching/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/stitching/opencl_kernels_stitching.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/stitching
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=stitching -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/stitching/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/stitching/opencl_kernels_stitching.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

