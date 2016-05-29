#!/bin/bash
################################################################################
# This script removes the `ttc` user and their files
################################################################################

# Prompt for confirmation
read -p "Remove the ttc user and all thier files? " -n 1 -r
echo    # New Line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	echo -e "\033[1;32m[Removing the user and their home files]\033[0m"
    userdel ttc -r
	echo -e "\033[1;32m[Removing the ttc user from the sudoers file]\033[0m"
	sed -i '/ttc/d' /etc/sudoers
	echo -e "\033[1;31m[The ttc user and their files have been removed from /home/ttc]\033[0m"
	echo -e "\033[1;31m[The ttc user has been removed from the sudoers file]\033[0m"
	sleep 2
	echo -e "\033[1;32m[User removal successful]\033[0m"
else
	echo -e "\033[1;32m[User removal aborted]\033[0m"
fi
