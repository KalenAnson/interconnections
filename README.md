# [Tic Tac Code](tictaccode.io)
## Lesson 8 Interconnections
This repository contains all the student host setup for the interconnections lesson and labs. The focus for this lesson it to teach students some of the basics of computer networks including the following main concepts:
* Network Addresses
* Network Communication
* Data Encapsulation
* Network Paradigms
* Network Services

## Prerequisites
To set this lab up you should have several computers that meet the requirements below:

1. Each host should be running Debian Linux
2. Each host needs to have a physical ethernet port
3. The hosts need a keyboard, monitor and root access to setup the lab


## Installation
1. Run the setup script as root:

		scripts/setup.sh

	The new user's home directory will be at `/home/ttc`. The lesson repository will be located at `/home/ttc/Development/int`.

2. The setup script installs the following packages. These can be purged later if the are no longer needed.

		apt-get install git vim openssh-server openssh-client apache2 tcpdump nc telnet w3m htop tmux

3. Verify the installation is complete by logging in as the `ttc` user with the password you created at installation.

## Clean Up
To remove the `ttc` user and __all their files__ run the following script as root:

	scripts/cleanup.sh

## Running a lesson
Each lesson is a custom tmux session that opens multiple panes and launches processes in the background.
Start the lessons by logging in as the new user and launching a new tmux session:

	tmux new

To start lesson one, use the following keyboard shortcut:

	Control-a A

Lesson two:

	Control-a B

Lesson three:

	Control-a C

## Lesson Outline
The lesson outline is located in the file `overview.md` and `TTC.pages`.
