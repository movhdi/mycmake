#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
rm -rf $SCRIPT_DIR/build
mkdir $SCRIPT_DIR/build
cd $SCRIPT_DIR/build
cmake .. 
cmake --build .

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
$SCRIPT_DIR/Tutorial 250.5
