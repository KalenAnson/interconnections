#!/bin/bash
################################################################################
# Lesson 1 - B
# Play
################################################################################
# Set IP Address
echo -e "\033[1;32m[Type your password below, you will not see the password as you type]\033[0m"
sudo /sbin/ifconfig eth0 172.16.0.101 netmask 255.255.255.0 up
#sudo route add default gw 172.16.0.1
cd /home/ttc/Development/int/work/

/bin/bash
