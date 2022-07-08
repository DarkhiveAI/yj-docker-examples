# voxl-docker-ffmpeg

This project contains examples of how to use ffmpeg in a Docker container running on VOXL.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
- [voxl-docker-ffmpeg](#voxl-docker-ffmpeg)
  - [Pull Image from Registry](#pull-image-from-registry)
  - [Examples](#examples)
    - [VOXL HDMI Input Example](#voxl-hdmi-input-example)
  - [Optional: Build the Image](#optional-build-the-image)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Pull Image from Registry

The docker image for this example is hosted in our registry and can be pulled onto VOXL.  Ensure VOXL is connected to the internet by setting  up VOXL into [Station Mode](https://docs.modalai.com/wifi-setup/#configure-station-mode).  Once connceted to the internet, proceed with the following:

```bash
adb shell
```

Now on VOXL, enable docker support if not already done:

```bash
voxl-configure-docker-support.sh
```

Pull the image:

```bash
docker pull gcr.io/modalai-public/voxl-ffmpeg:v1.0
```

*Note: If you'd like to build the image yourself, there are instructions at the end of this README.*

## Examples

### VOXL HDMI Input Example

Using the [VOXL HDMI Input Asseccory](https://www.modalai.com/products/voxl-hdmi-input-accessory), we can take a camera with an HDMI output and stream it to QGroundControl using UDP.

The project is setup to run in interactive mode.  If you haven't already, [pull the image from the registry following the steps above](#pull-image-from-registry).

To use this project, check out the [HDMI Input Accessory Manual](https://docs.modalai.com/hdmi-input-accessory-manual)


## Optional: Build the Image

Optionally, you can elect to build the docker image.

- connect VOXL Flight or VOXL + Flight Core hardware to host machine using USB
- run the build script:

```bash
./build-image.sh
```
