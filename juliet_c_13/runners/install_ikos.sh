#!/bin/bash

echo -e "###################################################################################### "
echo -e "INSTALLING IKOS Tool "
echo -e "###################################################################################### "
sudo apt install -y doxygen
sudo apt install libcgal-dev
sudo apt install libcgal-demo
echo "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-9 main" | sudo tee -a /etc/apt/sources.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install gcc g++ cmake libgmp-dev libboost-dev libboost-filesystem-dev libboost-thread-dev libboost-test-dev python python-pygments libsqlite3-dev libtbb-dev libz-dev libedit-dev llvm-9 llvm-9-dev llvm-9-tools clang-9
wget https://github.com/NASA-SW-VnV/ikos/releases/download/v3.0/ikos-3.0.tar.gz
tar -zxvf ikos-3.0.tar.gz && rm ikos-3.0.tar.gz
cd ikos-3.0
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX="~/ikos-3.0"
cmake .. -DLLVM_CONFIG_EXECUTABLE="/usr/lib/llvm-9/bin/llvm-config"
make 
make install
make clean
echo -e "###################################################################################### "



