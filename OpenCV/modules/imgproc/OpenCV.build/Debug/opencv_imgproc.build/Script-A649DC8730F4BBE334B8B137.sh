#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/imgproc
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=imgproc -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/imgproc/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/imgproc/opencl_kernels_imgproc.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/imgproc
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=imgproc -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/imgproc/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/imgproc/opencl_kernels_imgproc.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

