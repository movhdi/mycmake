#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
rm -rf $SCRIPT_DIR/step4_build
echo
sleep 1
ls -ltr
echo 
mkdir $SCRIPT_DIR/step4_build
echo
ls -ltr
echo
cd $SCRIPT_DIR/step4_build
ls -ltr
echo
cmake .. 
cmake --build .

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
$SCRIPT_DIR/Tutorial 250.5
