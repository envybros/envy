# CMake generated Testfile for 
# Source directory: /Users/BrightLand/Envy/_opencv/modules/imgcodecs
# Build directory: /Users/BrightLand/Envy/OpenCV/modules/imgcodecs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_test_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Debug/opencv_test_imgcodecs" "--gtest_output=xml:opencv_test_imgcodecs.xml")
  set_tests_properties(opencv_test_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Accuracy" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;175;ocv_add_accuracy_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_test_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Release/opencv_test_imgcodecs" "--gtest_output=xml:opencv_test_imgcodecs.xml")
  set_tests_properties(opencv_test_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Accuracy" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;175;ocv_add_accuracy_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
else()
  add_test(opencv_test_imgcodecs NOT_AVAILABLE)
endif()
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_perf_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Debug/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml")
  set_tests_properties(opencv_perf_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Performance" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/performance" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1251;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_perf_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Release/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml")
  set_tests_properties(opencv_perf_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Performance" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/performance" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1251;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
else()
  add_test(opencv_perf_imgcodecs NOT_AVAILABLE)
endif()
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_sanity_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Debug/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Sanity" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1252;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_sanity_imgcodecs "/Users/BrightLand/Envy/OpenCV/bin/Release/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Sanity" WORKING_DIRECTORY "/Users/BrightLand/Envy/OpenCV/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/BrightLand/Envy/_opencv/cmake/OpenCVUtils.cmake;1739;add_test;/Users/BrightLand/Envy/_opencv/cmake/OpenCVModule.cmake;1252;ocv_add_test_from_target;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;/Users/BrightLand/Envy/_opencv/modules/imgcodecs/CMakeLists.txt;0;")
else()
  add_test(opencv_sanity_imgcodecs NOT_AVAILABLE)
endif()