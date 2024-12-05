cmake_minimum_required(VERSION 3.5)
project(libpcl-all-gpu-dev)

set(AMENT_CMAKE_UNINSTALL_TARGET OFF)

# Include ament_cmake
find_package(ament_cmake REQUIRED)
find_package(ament_cmake_target_dependencies REQUIRED)

# Specify the path to the CUDA toolkit if it's not found automatically
set(CUDA_TOOLKIT_ROOT_DIR "/usr/local/cuda")  # Change this path to where CUDA is installed

# Enable CUDA
find_package(CUDA REQUIRED)
set(CMAKE_CUDA_COMPILER ${CUDA_NVCC_EXECUTABLE})
set(BUILD_CUDA ON)
set(BUILD_GPU ON)

# Set up PCL as an external project
add_subdirectory(pcl)

# Register the package
ament_package()