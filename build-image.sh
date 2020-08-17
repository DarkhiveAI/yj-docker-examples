#!/bin/bash

VERSION=v1.0
TARGET_DIR=/data/docker/ffmpeg
IMAGE_NAME=voxl-ffmpeg:$VERSION
IMAGE_TAR=voxl-ffmpeg_$VERSION.tag.gz

echo "Image: "$IMAGE_NAME

echo "Waiting for device..."
adb wait-for-device

echo "Checking for docker support..."
DOCKER_ACTIVE=$(adb shell systemctl is-active docker-start)
if [[ $DOCKER_ACTIVE == *active* ]]; then
	echo "-> Docker support is running on target."
else
	echo "-> Docker support not detected, running docker support on target..."
	adb shell voxl-configure-docker-support.sh
fi

echo "Building image: $IMAGE_NAME"
adb shell mkdir -p $TARGET_DIR
adb push Dockerfile $TARGET_DIR

adb shell docker build -t $IMAGE_NAME $TARGET_DIR
