#!/bin/bash
################################################################################
# TCPDUMP for port 9000
################################################################################
sudo tcpdump -nn -X -i eth0 port 9000
