#!/bin/bash
################################################################################
# QOTD Server for port 9100
################################################################################
echo -e "\033[1;32m[Starting the QOTD server on port 9100]\033[0m"
nc -lk -p 9100 -e cat /home/ttc/Development/int/work/qotd.txt
