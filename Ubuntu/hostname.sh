# Ubuntu 18.04 LTS change hostname permanently

hostnamectl

sudo hostnamectl set-hostname RaspberryPi
	
sudo nano /etc/hosts

# 127.0.0.1 localhost RaspberryPi
# 192.168.1.1 MacBookPro MacBookPro.home MacBookPro.lab
# 192.168.1.2 RaspberryPi RaspberryPi.home RaspberryPi.lab
# ::1 ip6-localhost ip6-loopback ip6-RaspberryPi

sudo reboot