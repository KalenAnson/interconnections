#!/bin/bash
################################################################################
# QOTD Server for port 9100
################################################################################
echo -e "\033[1;32m[Starting the QOTD server on port 9100 (Control-c) to quit]\033[0m"
nc -l -p 9100 -c /home/ttc/Development/int/scripts/qotd-onConnect.sh
