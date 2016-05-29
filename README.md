# Tic Tac Code
## Lesson 8 Interconnections
This repository contains all the student host setup for the interconnections lesson and labs.
## Prerequisites
1. Each host should be running Debian Linux
2. Each host needs to have a physical ethernet port
3. The hosts need a keyboard, monitor and root access to setup the lab
## Installation
1. Run the setup script as root:

		/scripts/setup.sh

	The new user's home directory will be at `/home/ttc`.

	When the user is no longer needed run the user deletion script as root to remove the user and their files:

		/home/ttc/Development/int/scripts/cleanup.sh

2. The setup script installs the following packages. These can be purged later if the are no longer needed.

		apt-get install git vim openssh-server openssh-client apache2 tcpdump nc telnet w3m htop tmux

3. Verify the installation is complete by logging in as the `ttc` user with the password you created at installation.

## Clean Up
To remove the `ttc` user and __all their files__ run the following script as root:

	/scripts/cleanup.sh
