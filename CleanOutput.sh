#!/bin/bash

for entry in "output"/*
do
 echo "Removing $entry ..."
 rm -rf "$entry"
done

echo "Success"
