#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/BrightLand/Envy/OpenCV
  make -f /Users/BrightLand/Envy/OpenCV/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/BrightLand/Envy/OpenCV
  make -f /Users/BrightLand/Envy/OpenCV/CMakeScripts/ReRunCMake.make
fi

