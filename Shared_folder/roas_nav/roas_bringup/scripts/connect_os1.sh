#!/bin/bash
sudo dnsmasq -C /dev/null -kd -F 192.168.10.11,192.168.10.11 -i eno1 --bind-dynamic
#sudo dnsmasq -C /dev/null -kd -F 192.168.10.20,192.168.10.100 -i eth0 --bind-dynamic
