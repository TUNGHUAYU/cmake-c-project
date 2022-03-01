#!/bin/bash

# check if build folder exist
if [[ -d build ]]; then
    echo "build/ folder already exist"
    printf "%s " "overwrite? (yes/no) "
    read ans
    if [[ ${ans} == "yes" ]]; then
        rm build/ -rf
    else 
        exit 0
    fi
fi

# create build folder
mkdir build

# record current work path
origin_pwd=$(pwd)

# go to build folder
cd build

# cmake 
cmake .. \
-D CMAKE_INSTALL_PREFIX=$(pwd)/install \
-D CMAKE_BUILD_TYPE=Release

make 

make install

ctest

# doxygen
cd ${origin_pwd}/doc/doxygen
doxygen Doxyfile