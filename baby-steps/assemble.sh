#!/bin/bash

set -e

if [ -e boot.bin ];
then
    rm boot.bin
fi

nasm boot.asm -f bin -o boot.bin
