#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/photo
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_photo.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_photo.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_photo.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/photo
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_photo.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_photo.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_photo.dylib
fi

