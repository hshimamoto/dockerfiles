#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get install -y build-essential cmake
apt-get install -y curl unzip
apt-get install -y python3 python3-pip libpython3.8-dev

apt-get install -y \
	libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
	gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
	gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-rtsp

apt-get install -y \
	libeigen3-dev libgtk-3-dev qt5-default freeglut3-dev \
	libvtk6-qt-dev libtbb-dev ffmpeg \
	libdc1394-22-dev libavcodec-dev libavformat-dev \
	libswscale-dev libjpeg-dev libpng++-dev libtiff5-dev \
	libopenexr-dev libwebp-dev libhdf5-dev \
	libopenblas-dev liblapacke-dev

pip3 install numpy scipy matplotlib opencv-python
