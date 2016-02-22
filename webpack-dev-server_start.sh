#!/bin/bash

while [ ! -d "/usr/src/app/" ];
do
    echo 'wait for mounting volume of your project'
    sleep 1
done

ln -s /usr/src/node_modules /usr/src/app/node_modules
npm start
