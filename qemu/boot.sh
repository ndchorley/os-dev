#!/bin/bash

qemu-system-x86_64 \
    -m 4G \
    -boot d \
    -cdrom debian-13.4.0-amd64-netinst.iso \
    -drive file=disk.qcow2,format=qcow2 \
