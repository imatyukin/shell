# Configure IP addresses on Ubuntu Server 18.04 LTS

ifconfig -a
ls /etc/netplan
# sudo netplan generate
cat /etc/netplan/50-cloud-init.yaml
sudo nano /etc/netplan/50-cloud-init.yaml

# network:
#     version: 2
#     ethernets:
#         eth0:
#             dhcp4: no
#             addresses: [198.18.1.2/24]
#             match:
#                 macaddress: b8:27:eb:c7:15:be
#             set-name: eth0
#             optional: true
#     wifis:
#         wlan0:
#             access-points:
#                 MacNet: {password: Reanimacija79}
#             addresses: [192.168.2.2/24]
#             gateway4: 192.168.2.1
#             dhcp4: no
#             nameservers: 
#                 search: [home, lab]
#                 addresses: [192.168.2.1]
#             optional: true

sudo netplan apply
sudo netplan --debug apply

ip addr