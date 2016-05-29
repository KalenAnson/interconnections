#!/bin/bash
################################################################################
# QOTD Server for port 9100
################################################################################
echo -e "\033[1;32m[To view another group's web page type 'w3m ADDRESS' ('q' to quit)]\033[0m"
echo -e "\033[1;32m[To view another group's QOTD type 'nc ADDRESS 9100' ('Control - c' to quit)]\033[0m"
echo -e "\033[1;32m[Starting the QOTD server on port 9100 (Control-c) to Exit]\033[0m"
nc -l -p 9100 -c /home/ttc/Development/int/scripts/qotd-onConnect.sh
