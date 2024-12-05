cmake_minimum_required(VERSION 3.5)
project(libpcl-all-gpu-dev)

# Enable CUDA
find_package(CUDA REQUIRED)
set(CMAKE_CUDA_COMPILER ${CUDA_NVCC_EXECUTABLE})
set(BUILD_CUDA ON)
set(BUILD_GPU ON)

# Set up PCL
add_subdirectory(pcl)