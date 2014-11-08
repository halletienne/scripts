#!/bin/bash
# Author : Etienne Hallet
# Simple script for chrooting easily from LVM on LUKS
# Need modification before usage

cryptsetup luksOpen /dev/sda5 sda5_crypt
apt-get update && apt-get install lvm2
vgs
lvs
vgchange -a y Wind-vg
mount /dev/mapper/Wind--vg-root /mnt
mount /dev/mapper/Wind--vg-home /mnt/home
mount /dev/sda1 /mnt/boot
cd /mnt
mount -t proc proc proc/
mount --rbind /sys sys/
mount --rbind /dev dev/
chroot /mnt /bin/bash

echo ' For the umount you can check the mounted folder in /proc/mounts'
echo ' But most of time just need to run the following from your chroot folder'
echo ' # umount dev/pts dev home proc'
echo ' and a bunch of things in sys'
