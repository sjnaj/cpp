# cmake_minimum_required(VERSION 3.7)
# set(CMAKE_CXX_STANDARD 17)
# set(CMAKE_VERBOSE_MAKEFILEON ON)

# # find_package(Boost 1.51.0 MODULE
# #   COMPONENTS
# #     context
# #     filesystem
# #     program_options
# #     regex
# #     system
# #     thread
# #   REQUIRED
# # )
# # list(APPEND FOLLY_LINK_LIBRARIES ${Boost_LIBRARIES})
# # list(APPEND FOLLY_INCLUDE_DIRECTORIES ${Boost_INCLUDE_DIRS})

# # # set(FOLLY_CMAKE_DIR /usr/local/include/folly/lib/cmake/)
# # # if (NOT TARGET Folly::folly)
# # #   include("${FOLLY_CMAKE_DIR}/folly-targets.cmake")
# # # endif()
# # find_package(folly REQUIRED)

# # find_package(Threads REQUIRED)
# # find_package(gflags REQUIRED)
cmake_minimum_required(VERSION 3.7)
project(demo CXX C ASM)

find_package(Boost REQUIRED)
find_package(folly REQUIRED)
find_package(Threads REQUIRED)
find_package(gflags REQUIRED)
find_package(glog REQUIRED)
find_package(fmt REQUIRED)

set(CMAKE_CXX_STANDARD 20)
#include_directories(${Boost_INCLUDE_DIRS})
#include_directories(${folly_INCLUDE_DIRS})

# add_compile_definitions(_GLIBCXX_USE_CXX11_ABI=0)
set(BUILD_SHARED_LIBS ON)
set_and_check(FOLLY_INCLUDE_DIR /usr/local/include/folly)
set_and_check(FOLLY_CMAKE_DIR /usr/local/lib/cmake/folly)
if (NOT TARGET Folly::folly)
  include("${FOLLY_CMAKE_DIR}/folly-targets.cmake")
endif()


set(FOLLY_LIBRARIES Folly::folly)

if (NOT folly_FIND_QUIETLY)
  message(STATUS "Found folly: ${PACKAGE_PREFIX_DIR}")
endif()
set (CMAKE_CXX_FLAGS -fcoroutines)
add_executable(HelloWorld demo.cpp)
add_executable(H1 demo01.cpp)
add_executable(H2 demo02.cpp)
add_executable(H3 demo02.cpp)
add_executable(H4 demo02.cpp)


target_link_libraries(HelloWorld ${Boost_LIBRARIES}  ${FOLLY_LIBRARIES} )

#链接顺序很重要，libfolly在test_util和benchmark之后
set(FOLLY_LIBRARIES /usr/local/lib/libfolly_test_util.a   /usr/local/lib/libfollybenchmark.a ${FOLLY_LIBRARIES} )
message(${FOLLY_LIBRARIES})
target_link_libraries(H1 ${Boost_LIBRARIES}  ${FOLLY_LIBRARIES} )
target_link_libraries(H2 ${Boost_LIBRARIES}  ${FOLLY_LIBRARIES} )
target_link_libraries(H3 ${Boost_LIBRARIES} ${FOLLY_LIBRARIES} )
target_link_libraries(H4 ${Boost_LIBRARIES} ${FOLLY_LIBRARIES} )