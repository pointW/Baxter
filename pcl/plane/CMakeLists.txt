cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(plane_removal)

find_package(PCL 1.2 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable (plane_removal plane_removal.cpp)
target_link_libraries (plane_removal ${PCL_LIBRARIES})
