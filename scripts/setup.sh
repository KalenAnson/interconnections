#!/bin/bash
################################################################################
# This script creates the `ttc` user, their files and sets up the files
################################################################################

# Prompt for confirmation
read -p "Create the ttc user and install necessary packages? " -n 1 -r REPLY
echo    # New Line
case "$REPLY" in
  y|Y ) CREATE=1;;
  n|N ) CREATE=0;;
  * ) echo "Incalid Option";;
esac
if [[ "$CREATE" -eq 1 ]]
then
	echo -e "\033[1;32m[Adding the new ttc user]\033[0m"
    useradd ttc -m -s /bin/bash
	echo -e "\033[1;32m[Create the user's new password]\033[0m"
	passwd ttc
	echo -e "\033[1;32m[Adding the user to the sudoers group]\033[0m"
	adduser ttc sudo
	echo -e "\033[1;32m[Creating the user's files]\033[0m"
	git clone https://github.com/kalenanson/interconnections /home/ttc/Development/int
	echo -e "\033[1;32m[Installing necessary packages]\033[0m"
	apt-get install git vim openssh-server openssh-client apache2 tcpdump netcat-traditional telnet w3m htop tmux
	sleep 2
	echo -e "\033[1;32m[Creating dot files]\033[0m"
	cp /home/ttc/Development/int/env/.tmux.conf /home/ttc/.tmux.conf
	printf "PATH=\$PATH:/sbin" >> /home/ttc/.bashrc
	echo -e "\033[1;32m[Setting up web server]\033[0m"
	/home/ttc/Development/int/scripts/webserver.sh
	echo -e "\033[1;32m[Setting ownership of user's files]\033[0m"
	chown -R ttc:ttc /home/ttc
	echo -e "\033[1;32m[User creation successful]\033[0m"
	sleep 2
	echo -e "\033[1;32m[Login with the 'ttc' username and the password you created]\033[0m"
else
	echo -e "\033[1;32m[User creation aborted]\033[0m"
fi
