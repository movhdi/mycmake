#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
rm -rf $SCRIPT_DIR/step2_build
echo
sleep 1
ls -ltr
echo 
mkdir $SCRIPT_DIR/step2_build
echo
ls -ltr
echo
cd $SCRIPT_DIR/step2_build
ls -ltr
echo
cmake .. -DUSE_MYMATH=ON
cmake --build .

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
$SCRIPT_DIR/Tutorial 250.5
