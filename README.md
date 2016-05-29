# Tic Tac Code
## Lesson 8 Interconnections
This repository contains all the student host setup for the interconnections lesson and labs.
## Prerequisites
1. Each host should be running Debian Linux
2. Each host needs to have a physical ethernet port
3. The hosts need a keyboard, monitor and root access to setup the lab
## Installation
1. Create a new user on the host as follows:

		useradd ttc -m -s /bin/bash
		passwd ttc #TicTacCode

	The new user's home directory will be at `/home/ttc`.

2. Add `ttc` to sudo list:

		visudo

3. Make sure the following packages are installed

		apt-get install git vim openssh-server openssh-client apache2 tcpdump nc telnet w3m htop tmux

4. Clone the lesson into the directory `/home/ttc/Development/int`

		cd /home/ttc
		mkdir Development
		cd Development
		gitclone https://github.com/kalenanson/interconnections int
		chown -R ttc:ttc int/
