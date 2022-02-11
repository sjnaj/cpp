cmake_minimum_required(VERSION 3.0.0)
project(class VERSION 0.1.0)

include(CTest)
enable_testing()
#set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -save-temps=obj")# CPP
#保存临时文件，预处理和汇编都是生成object的中间临时文件,=obj，表示生成预处理文件的位置和.o同目录,不加时在build目录下
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")



##set(THREADS_PREFER_PTHREAD_FLAG ON)#设置链接thread
find_package(Threads REQUIRED)

include_directories("${PROJECT_BINARY_DIR}")
file(GLOB_RECURSE mains RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}/main*.cpp")
foreach(mainfile IN LISTS mains)#遍历查找不同的主函数
get_filename_component(mainname ${mainfile} NAME_WE)#转换生成mainname，NAME_WE,没有目录和拓展的文件名
add_executable(${mainname} ${mainfile})
##target_link_libraries( ${mainname} LINK Threads::Threads)	# 添加链接库，LINK是在src目录的CMakeLists中定义的，Threads来自上面引入的包
endforeach()
##-fno-omit-frame-pointer 保留栈帧指针，获取详细信息，运行默认关闭，调试时默认打开
if (CMAKE_BUILD_TYPE STREQUAL Debug)##debug模式下
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fsanitize=leak")##不适用于release 模式

        add_definitions(
            -D_DEBUG
        )##添加_DEBUG宏
endif ()
#aux_source_directory(. ALL_SRCS)			# 添加当前目录下所有的源文件
#add_executable( ${PROJECT_NAME} ${ALL_SRCS})//默认projectname就是main
#target_link_libraries( ${PROJECT_NAME} LINK)	# 添加链接库，LINK是在src目录的CMakeLists中定义的


include(CPack)
