#! /bin/bash

bash ~/AndroidTest/Startup.sh

echo "Waiting for device startup"

sleep 3

echo "Trying to install apks ..."

bash ~/AndroidTest/RunTests.sh
 
