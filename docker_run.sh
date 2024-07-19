#!/bin/bash
export GIT_ROOT=$(cd $(dirname $0)/.. ; pwd)
sudo docker run -it --rm --net=host --runtime nvidia -e DISPLAY=$DISPLAY \
	--device /dev/bus/usb \
	--device /dev/video0:/dev/video0:mwr \
	-v ${GIT_ROOT}/Depth4ToM-docker/weights:/root/Depth4ToM-code/weights \
	-v ${GIT_ROOT}/Depth4ToM-docker/data:/root/Depth4ToM-code/data \
	-v /tmp/.X11-unix/:/tmp/.X11-unix \
	depth4tom:100
 
