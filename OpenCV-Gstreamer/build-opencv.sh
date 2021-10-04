#!/bin/bash

#set -e

OPENCV_VERSION=4.5.3
OPENCV_DIR=/opt/opencv-$OPENCV_VERSION
OPENCV_URL=https://github.com/opencv/opencv/archive/$OPENCV_VERSION.zip
OPENCV_ZIP=opencv-$OPENCV_VERSION.zip

cd /opt
curl -L -o $OPENCV_ZIP $OPENCV_URL
unzip $OPENCV_ZIP

cd $OPENCV_DIR
mkdir build
cd build
cmake ..
make -j $(nproc)
make install
