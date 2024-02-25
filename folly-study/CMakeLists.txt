
cmake_minimum_required(VERSION 3.7...3.18)
set(CMAKE_CXX_STANDARD 20)

project(folly-study LANGUAGES CXX C ASM VERSION 0.0.1)
if(NOT CMAKE_BUILD_TYPE)
set(CMAKE_BUILD_TYPE Release)#默认release
endif()
if(NOT DEFINED BUILD_SHARED_LIBS)
set(BUILD_SHARED_LIBS ON)
endif()
set(CMAKE_VERBOSE_MAKEFILE ON)#详细打印
# find_package(Boost REQUIRED)
find_package(folly REQUIRED)
# find_package(Threads REQUIRED)
find_package(gflags REQUIRED)
find_package(glog REQUIRED)
# find_package(fmt REQUIRED)
find_package(GTest REQUIRED)
#include_directories(${Boost_INCLUDE_DIRS})
#include_directories(${folly_INCLUDE_DIRS})

# add_compile_definitions(_GLIBCXX_USE_CXX11_ABI=0)
set(BUILD_SHARED_LIBS ON)
# set_and_check(FOLLY_INCLUDE_DIR /usr/local/include/folly)
# set_and_check(FOLLY_CMAKE_DIR /usr/local/lib/cmake/folly)
# if (NOT TARGET Folly::folly)
#   include("${FOLLY_CMAKE_DIR}/folly-targets.cmake")
# endif()

# set(FOLLY_LIBRARIES Folly::folly)

# if (NOT folly_FIND_QUIETLY)
#   message(STATUS "Found folly: ${PACKAGE_PREFIX_DIR}")
# endif()
set (CMAKE_CXX_FLAGS -fcoroutines)
add_executable(HelloWorld demo.cpp)
add_executable(H1 demo01.cpp)
add_executable(H2 demo02.cpp)
add_executable(H3 demo03.cpp)
add_executable(H4 demo04.cpp)
add_executable(ahmTest ahmTest.cpp)


# target_link_libraries(HelloWorld ${Boost_LIBRARIES}  ${FOLLY_LIBRARIES} )
#folly已经链接了boost
target_link_libraries(HelloWorld  Folly::folly )
target_link_libraries(ahmTest Folly::folly   Folly::folly_test_util  Folly::follybenchmark  GTest::gtest)

target_compile_definitions(HelloWorld PUBLIC HELLO=6)#传递一个宏
#链接顺序很重要，libfolly在test_util和benchmark之后
# set(FOLLY_LIBRARIES /usr/local/lib/libfolly_test_util.a   /usr/local/lib/libfollybenchmark.a ${FOLLY_LIBRARIES} )
# message("${FOLLY_LIBRARIES}  ${GTEST_LIBRARIES}")
target_link_libraries(H1  Folly::folly_test_util Folly::follybenchmark   )
target_link_libraries(H2  Folly::folly_test_util Folly::follybenchmark )
target_link_libraries(H3  Folly::folly_test_util  Folly::follybenchmark GTest::gtest)
target_link_libraries(H4  Folly::folly_test_util  Folly::follybenchmark  GTest::gtest )