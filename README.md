# perception_pcl

[![Build Status](https://travis-ci.org/ros-perception/perception_pcl.svg?branch=melodic-devel)](https://travis-ci.org/ros-perception/perception_pcl)

PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
bridge for 3D applications involving n-D Point Clouds and 3D geometry
processing in ROS.

## GPU support

### Uninstall outdated CUDA toolkit if needed
    sudo ./uninstall_cuda.sh

### Install latest CUDA toolkit if needed
    sudo ./install_cuda.sh

### Build PCL with GPU support
    sudo ./install_dependencies.sh