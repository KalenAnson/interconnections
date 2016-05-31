# Lesson 1 - Network Addresses / Hosts

> How do computers talk to other computers?
> What is a network?

Networks are comprised of Nodes
Nodes have addresses
Nodes can have names also

In computer networking we call a network node a host.

To communicate on a network you need a network address.

There are two kinds of network addresses:

Private - Traffic to a private network address does not leave that network.
Public - Traffic to a network address that is public can leave the private network

> How do you find out what your network address is?

## IFCONFIG

> How do you know if there is a host that is responding to traffic on a particular network address?

## PING

# Lesson 2 - Encapsulation / Switching

> How does a message get from one computer to another on a network?

The computer talking wraps the message in side of a series of layers. Each layer tells the network what to do with the message.

The message can be anything. We often refer to the content of a message as a payload.

> What kind of payloads do you send on your computers?

Each payload is encapsulated and broken into little pieces and send over the network where it is reassembled into the final payload.

1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

> What happens if the little pieces or packets get messed up along the way?

Each layer should handle error checking and retries.

We are going to use two simple tools , `NETCAT` and `TCPDUMP` to send simple message payloads to one another.

# Lesson 3 - Network Paradigms / Server - Client & Peer to Peer

> Why would people make a network?

Networks adapt to what kinds of activities you are trying to do.

## PEER TO PEER Networks

Examples:

Filesharing
NC examples earlier

## SERVER - CLIENT NETWORKS

Everything else :)

In a server client network the server listens for connections from clients.

Clients initiate a connection and the server responds with content.

Either side can break the connection, but usually the client decides when the session is over.

Any client server relationship can be called a service.

Networks therefore exist to provide services to clients on the networks.

Final exercise HTTP and QOTD.

# Activities

## Activity 1 - Hosts

1. Login

		Username = ttc
		Password = TicTacCode


2. Start TMUX

	Type:

		tmux new


3. Start Activity 1

	Read this instruction carefully before you try it!

	Type 'Control - a' then the __upper case__ letter 'A' to begin activity 1.


4. Discover your network address

	Type:

		ifconfig


5. Set your network address

	Type:

		sudo /sbin/ifconfig eth0 ADDRESS netmask 255.255.255.0 up

		The ADDRESS should be the address that your group was given.


6. Ping another group

	Type:

		ping ADDRESS

	To stop pinging type 'Control - c'.


7. Done

	Type 'Control - c' to stop pinging.
	Type 'Control - d' to close the lower window.
	Type 'Control - d' to close the upper window.
	Type 'htop'.

## Activity 2 - Encapsulating

1. Start Activity 2

	Read this instruction carefully before you try it!

	Type 'Control - a' then the __upper case__ letter 'B' to begin activity 2.

2. Setup

		Type your password.
		Type 'Control - a' then the __down arrow key__ to start.

3. Start your Server

	Type:

		nc -lp 9000

	Wait for another group to connect to you. Let them know when they are connected.

	Disconnect by typing 'Control - c'

4. Look for the text in the raw data above

	See if you see the payload that you are sending in the text above your prompt.

	What is all that stuff used for?

	Try unplugging your network cable from the switch and seeing what happens.

5. Connect to a server

	Type:

		nc ADDRESS 9000

	The ADDRESS should be the group's address to whom you are trying to connect.

6. Look for the text in the raw data above

	See if you see the payload that you are sending in the text above your prompt.

	What is all that stuff used for?

	Try unplugging your network cable from the switch and seeing what happens.

7. Done

	Type 'Control - c' to stop netcat.
	Type 'Control - d' to close the lower window.
	Type 'Control - c' then 'Control - d' to close the upper window.
	Type 'htop'.

## Activity 3 - Services

1. Start Activity 3

	Read this instruction carefully before you try it!

	Type 'Control - a' then the __upper case__ letter 'C' to begin activity 3.


2. Create your web content

	Type:

		nano index.html

	Make changes to the document and then save using the command below.
	Save the changes with  'Control - o' then press enter.
	Exit the editor with  'Control - x'.

3. Create your quotes

	Type:

		nano qotd.md

	Make changes to the document and then save using the command below.
	Save the changes with  'Control - o' then press enter.
	Exit the editor with  'Control - x'.

4. Connect to another group's services

	For web content type:

		w3m ADDRESS

		The ADDRESS should be the address that you are trying to connect to.
		Exit the web browser with  'q' then 'y'.

	For quote of the day type:

		nc ADDRESS 9100

		The ADDRESS should be the address that you are trying to connect to.
		Exit nc by typing 'Control - c'.


5. Done

	Type 'Control - c' to stop netcat.
	Type 'Control - d' to close the lower window.
	Type 'Control - c' then 'Control - d' to close the upper window.
	Type 'htop'.
