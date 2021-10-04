FROM ubuntu:20.04

RUN apt-get update

# package install
COPY prepare.sh /prepare.sh
RUN /bin/bash /prepare.sh

# OpenCV Build and Install
COPY build-opencv.sh /build-opencv.sh
RUN /bin/bash /build-opencv.sh
