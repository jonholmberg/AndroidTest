#! /bin/bash

emulators=$(emulator -list-avds)

for emulator in $emulators 
do
 echo "Starting emulator $emulator ..."
 emulator -avd $emulator &> ~/AndroidTest/device-logs/$emulator & 
done
