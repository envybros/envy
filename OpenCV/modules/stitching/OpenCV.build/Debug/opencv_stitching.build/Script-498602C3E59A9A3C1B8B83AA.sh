#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/stitching
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_stitching.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_stitching.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_stitching.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/stitching
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_stitching.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_stitching.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_stitching.dylib
fi

