#!/bin/bash
DEFCONFIG=DarkSense_defconfig
KERNEL=DarkSense
make clean && make mrproper
export CROSS_COMPILE=~/android/android-ndk-r12b/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-
export ARCH=arm64
export KERNEL_CONFIG=/arch/arm64/configs/$DEFCONFIG
make -j8 $DEFCONFIG
