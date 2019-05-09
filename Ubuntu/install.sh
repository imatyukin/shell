# Install Ubuntu Server on a Raspberry Pi 3
# Create installation media for Ubuntu on MacOS

diskutil list

diskutil unmountDisk /dev/disk1

sudo sh -c 'xzcat ~/Downloads/ubuntu-18.04.2-preinstalled-server-arm64+raspi3.img.xz  | sudo dd of=/dev/disk1 bs=32m'

# Log in "ubuntu" for the username and the password