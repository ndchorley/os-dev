#!/bin/bash

qemu-system-x86_64 \
    -smp 2 \
    -m 4G \
    -drive file=disk.qcow2,format=qcow2 \
    -nic user,hostfwd=tcp::9000-:22
