#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/ml
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_ml.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_ml.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_ml.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/ml
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_ml.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_ml.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_ml.dylib
fi

