#!/bin/bash
################################################################################
# QOTD On connect script
################################################################################
echo -e "\033[1;32m[Client connected]\033[0m"
cat /home/ttc/Development/int/work/qotd.txt
nc -l -p 9100 -c /home/ttc/Development/int/scripts/qotd-onConnect.sh
