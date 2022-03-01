#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/photo
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=photo -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/photo/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/photo/opencl_kernels_photo.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/photo
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=photo -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/photo/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/photo/opencl_kernels_photo.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

