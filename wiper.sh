#!/bin/bash

if [ -e next_full_wipe.txt ]; then
  # Flag file exists, indicating a second run
  echo "Server full wiped."
  ./rustserver full-wipe
  # Clean up the flag file
  rm next_full_wipe.txt
else
  # Flag file doesn't exist, indicating the first run
  echo "Server wiped but next wipe is full wipe!"
  ./rustserver map-wipe
  # Create the flag file
  touch next_full_wipe.txt
fi
