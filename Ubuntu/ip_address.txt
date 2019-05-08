$ ifconfig -a
$ sudo netplan generate
$ cat /etc/netplan/50-cloud-init.yaml
$ sudo vim /etc/netplan/50-cloud-init.yaml

enp0s8:
dhcp4: no
dhcp6: no
addresses: [192.168.56.110/24, ]
gateway4: 192.168.56.1
nameservers:
addresses: [8.8.8.8, 8.8.4.4]

$ sudo netplan apply
$ sudo netplan --debug apply