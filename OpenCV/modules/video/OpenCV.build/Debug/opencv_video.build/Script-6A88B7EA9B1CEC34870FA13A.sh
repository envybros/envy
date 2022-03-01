#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/video
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=video -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/video/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/video/opencl_kernels_video.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/video
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=video -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/video/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/video/opencl_kernels_video.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

