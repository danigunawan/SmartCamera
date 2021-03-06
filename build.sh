#!/bin/bash
#
# Building the complete application and prepare the Docker images.
#
# User must have access to Docker.
#
# Usage: ./build.sh [/yourPath/]
#  - setup the base-href to /yourPath/ in your Angular app
# 

WORK_DIR=$(pwd)

# Build the camera-service
cd $WORK_DIR/camera-service
./build.sh 

# Build the camera-app
cd $WORK_DIR/camera-app
./build.sh $1
