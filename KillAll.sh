#! /bin/bash

devices=`adb devices | tail  -n +2 | cut -f1`

for device in $devices
do
 echo "Killing device $device"
 adb -s $device emu kill
done
