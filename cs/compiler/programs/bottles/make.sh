#!/bin/bash

shopt -s expand_aliases

cd ../../../
source ./setup_env.sh
cd cs/compiler

compiler test.bc
asm test.asm
vm -b test.bin