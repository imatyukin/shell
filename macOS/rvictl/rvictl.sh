#!/usr/bin/env bash
# Захват трафика мобильных устройств с iOS.

# Необходимо скопировать UDID iPAD или iPhone из iTunes
# (в системе появится новый сетевой интерфейс rvi0)
# rvictl -s <UDID>

# Захват трафика
# sudo tcpdump -i rvi0 -w <файл.pcap>

# Отключить устройство
# (.pcap открыть в Wireshark)
# rvictl -x <UDID>
