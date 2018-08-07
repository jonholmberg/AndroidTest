#!/bin/bash

for entry in "device-logs"/*
do
 echo "Removing $entry ..."
 rm -rf "$entry"
done

echo "Success"
