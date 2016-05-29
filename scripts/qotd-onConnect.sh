#!/bin/bash
################################################################################
# QOTD On connect script
################################################################################
# Welcome message
echo -e "\033[1;32m[Client connected - (Control - c) to disconnect]\033[0m"
# Send quote
cat /home/ttc/Development/int/work/qotd.md
# Relaunch nc since this version does not have '-k' option
nc -l -p 9100 -c /home/ttc/Development/int/scripts/qotd-onConnect.sh
