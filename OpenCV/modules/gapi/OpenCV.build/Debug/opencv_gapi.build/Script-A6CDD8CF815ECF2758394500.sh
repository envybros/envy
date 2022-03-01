#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/gapi
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_gapi.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_gapi.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Debug/libopencv_gapi.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV/modules/gapi
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_gapi.4.5.5.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_gapi.405.dylib /Users/BrightLand/Envy/OpenCV/lib/Release/libopencv_gapi.dylib
fi

