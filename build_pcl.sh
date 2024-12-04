#!/bin/bash

# Fail on errors
set -e

# Temp directory for install 
temp_dir=$(mktemp -d)
pushd "$temp_dir"

# Uninstall previous version of PCL
apt remove -y libpcl*

# Setup environment
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Get PCL 1.14.1 and build
git clone --branch pcl-1.14.1 https://github.com/PointCloudLibrary/pcl
cd pcl
mkdir build
cd build
cmake .. -DBUILD_GPU=yes -DBUILD_CUDA=yes
make -j8

# Install new PCL
make install

popd