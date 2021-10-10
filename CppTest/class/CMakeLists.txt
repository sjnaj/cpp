cmake_minimum_required(VERSION 3.0.0)
project(class VERSION 0.1.0)

include(CTest)
enable_testing()
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -save-temps=obj")# C
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -save-temps=obj")# CPP
# 保存临时文件，预处理和汇编都是生成object的中间临时文件,=obj，表示生成预处理文件的位置和.o同目录,不加时在build目录下

aux_source_directory(. ALL_SRCS)			# 添加当前目录下所有的源文件
add_subdirectory(src)						# 添加src子目录


add_executable( ${PROJECT_NAME} ${ALL_SRCS})
target_link_libraries( ${PROJECT_NAME} LINK)	# 添加链接库，linkledist是在src目录的CMakeLists中定义的


include(CPack)
