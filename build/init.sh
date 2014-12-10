#!/bin/bash

RAMDISK="/home/brett/android_kernel_samsung_d2/build/ramdisk"
RAMDISK_OUT="/home/brett/android_kernel_samsung_d2/build/ramdisk.cpio"
RAMDISK_PATH=$PWD


echo "Making ramdisk..."
		cd ${RAMDISK}
		find . -not -name ".gitignore" | cpio -o -H newc > ${RAMDISK_OUT}
		cd ${RAMDISK_PATH}
		rm ramdisk.cpio.lzma
		find . -not -name ".gitignore" | lzma ramdisk.cpio

echo "Done!"

