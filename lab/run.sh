#!/bin/bash

DISPLAY_NUMBER=200
X_SERVER_SOCKET_FILENAME=/tmp/.X11-unix/X0

xhost +
socat TCP-LISTEN:$((DISPLAY_NUMBER+6000)),fork,bind=127.0.0.1 UNIX-CONNECT:$X_SERVER_SOCKET_FILENAME &
docker run -it pcl-image
kill -9 %
xhost -
