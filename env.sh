#!/bin/bash
echo "Configuration for board BPI-R2"

GCC_BASE=/home/${USER}/WORK/Toolchain
GCC_TYPE=gcc-linaro-6.4.1-2018.05-x86_64_arm-linux-gnueabi
export PATH=${GCC_BASE}/${GCC_TYPE}/bin:$PATH
export CROSS_COMPILE=arm-linux-gnueabi-
export ARCH=arm;

export LOADADDR=0x80008000

make mt7623n_evb_bpi_defconfig
