#!/bin/bash

echo "Enter your project path (ex:/home/user1/project/) :"
read PROJECT_PATH
echo "Enter your ssh port (ex:2222) :"
read SSH_PORT
echo "Enter your webpack-dev-server port (ex:8888) :"
read WEB_DEV_SERVER_PORT
echo "Enter mock server url (ex:http://10.10.10.10:8080). If no, press Enter to skip."
read MOCK_API_URL

DOCKER_IMAGE=fayehuang/react-webpack

docker run -d \
           -p $SSH_PORT:22 \
           -p $WEB_DEV_SERVER_PORT:$WEB_DEV_SERVER_PORT \
           -e PORT=$WEB_DEV_SERVER_PORT \
           -e MOCK_SERVER=$MOCK_API_URL \
           -v $PROJECT_PATH:/usr/src/app/ \
           $DOCKER_IMAGE
