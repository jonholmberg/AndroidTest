#!/bin/bash

devices=`adb devices | tail  -n +2 | cut -f1`

for device in $devices
do
 
 until adb -s $device wait-for-device shell getprop init.svc.bootanim | grep -m 1 stopped >/dev/null;  do
  echo "Waiting for $device"
  sleep 2
 done

 echo "Installing apks on device $device ..." 

 adb -s $device install -t -r ~/AndroidTest/app-mock.apk
 adb -s $device install -r ~/AndroidTest/app-mock-androidTest.apk
 
 date=$(date '+%d-%m-%Y-%H:%M:%S')

 adb -s $device shell am instrument -w com.economic.econandroidsales.test/com.economic.econandroidsales.MultiDexSalesAndroidJUnitRunner &> ~/AndroidTest/output/${device}-$date &
 echo "Running tests on device $device"
done

