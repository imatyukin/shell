#!/usr/bin/env sh

# Unified Extensible Firmware Interface (UEFI)
/boot/loader.efi

# Basic Input/Output System (BIOS)
/boot/loader

# UFS in Single-User Mode
fsck -p
mount -o rw /
mount -a

mount /dev/ad0s1a /

mount -a -t ufs

# ZFS in Single-User Mode
zfs mount -a

zfs set readonly=off zroot/ROOT/default

# The Network in Single-User Mode
/etc/netstart

# The Loader Prompt
# Viewing Disks
lsdev

# Loader Variables
show
show acpi.oem
set console=comconsole

# Booting from the Loader
boot

# Loader Configuration
cat /boot/defaults/loader.conf
vi /boot/loader.conf
