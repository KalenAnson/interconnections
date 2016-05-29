#!/bin/bash
################################################################################
# Create the webserver content
# Run as root
################################################################################
rm /var/www/html/index.html
ln -s /home/ttc/Development/int/work/index.html /var/www/html/index.html
