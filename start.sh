#!/bin/bash

echo "Enter your source code assets path (ex:/home/user1/project1/assets) :"
read ASSETS_PATH
echo "Enter your ssh port (ex:2222) :"
read SSH_PORT
echo "Enter your webpack-dev-server port (ex:8888) :"
read WEB_DEV_SERVER_PORT


DOCKER_IMAGE=react-webpack

docker run -d \
           -p $SSH_PORT:22 \
           -p $WEB_DEV_SERVER_PORT:$WEB_DEV_SERVER_PORT \
           -e PORT=$WEB_DEV_SERVER_PORT \
           -v $ASSETS_PATH:/usr/src/app/assets \
           react-webpack
