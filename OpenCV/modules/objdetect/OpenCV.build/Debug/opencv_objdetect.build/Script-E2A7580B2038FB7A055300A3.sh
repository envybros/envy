#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/objdetect
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=objdetect -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/objdetect/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/objdetect/opencl_kernels_objdetect.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/objdetect
  /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME=objdetect -DCL_DIR=/Users/BrightLand/Envy/_opencv/modules/objdetect/src/opencl -DOUTPUT=/Users/BrightLand/Envy/OpenCV/modules/objdetect/opencl_kernels_objdetect.cpp -P /Users/BrightLand/Envy/_opencv/cmake/cl2cpp.cmake
fi

