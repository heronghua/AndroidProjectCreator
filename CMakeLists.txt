cmake_minimum_required(VERSION 3.0)
project(AndroidProjectCreator)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_VERBOSE_MAKEFILE ON)

#--------------------------------#

macro(Download_Single_Headerlib FILE URL)
  file(DOWNLOAD ${URL} ${CMAKE_BINARY_DIR}/include/${FILE})
  IF(NOT Download_Single_Headerlib_flag)
    include_directories(${CMAKE_BINARY_DIR}/include)
    set(Download_Single_Headerlib_flag TRUE)
  ENDIF()
endmacro()


Download_Single_Headerlib(
  incbin.h
  "https://raw.githubusercontent.com/rasky/incbin/refs/heads/patch-1/incbin.h"
  )
include_directories(${CMAKE_CURRENT_LIST_DIR})

#--------- Main Target -------------#

add_executable(AndroidProjectCreator src/app.cpp)
