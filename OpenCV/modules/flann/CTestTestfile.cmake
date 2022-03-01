# CMake generated Testfile for 
# Source directory: /Users/BrightLand/Envy/_opencv/modules/flann
# Build directory: /Users/BrightLand/Envy/OpenCV/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_test_flann "/Users/BrightLand/Envy/OpenCV/bin/Debug/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
  set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;/Users/BrightLand/Envy/_opencv/modules/flann/CMakeLists.txt;2;ocv_define_module;/Users/BrightLand/Envy/_opencv/modules/flann/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_test_flann "/Users/BrightLand/Envy/OpenCV/bin/Release/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
  set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;/Users/BrightLand/Envy/_opencv/modules/flann/CMakeLists.txt;2;ocv_define_module;/Users/BrightLand/Envy/_opencv/modules/flann/CMakeLists.txt;0;")
else()
  add_test(opencv_test_flann NOT_AVAILABLE)
endif()
