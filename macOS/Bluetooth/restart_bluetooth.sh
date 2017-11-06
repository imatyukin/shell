#!/bin/bash
# Restart Bluetooth Daemon on Mac OS X without restarting

sudo launchctl stop com.apple.blued
sudo launchctl start com.apple.blued

# a brute-force method
# sudo pkill blued

# an older OS X version
# sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist
# sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist
# or
# sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport
# sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport