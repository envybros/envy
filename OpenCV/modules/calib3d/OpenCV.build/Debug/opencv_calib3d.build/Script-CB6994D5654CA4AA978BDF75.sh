#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/calib3d
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=calib3d -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/calib3d/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/calib3d/opencl_kernels_calib3d.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/calib3d
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=calib3d -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/calib3d/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/calib3d/opencl_kernels_calib3d.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

