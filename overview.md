# Approach (10 Minutes)
{Need two sets of cards, one set is the student's address on the network, and the other set is a set of messages with recipient addresses)
I want to get the students physically organized as nodes on a 'network'. We will pass out cards with random numbers between 0 and 255 on them (I can make the cards).

We will then have each student sign their message with their address and then pass their message card to an adjacent node on the network. Each student can only pass cards to the students adjacent to them. Students can not move around. They also do not know which student corresponds to each address. We will start out with a roughly circular arrangement. We can discuss the challenge of the activity and ask them to suggest ways it could be made simpler and more efficient.

## Example
Student A is sitting beside student B and C. She has a card addressed to student F, so she passes it to student A. He does not know where student F is located so he passes the card to student G who is another adjacent node.

This process will go on for a while then we can ask the students if they want to try another seating arrangement. We will rearrange the network physically and try to see if different arrangements make the communication better or worse.

The thing I want to illustrate is how a simple network forwards traffic to other nodes.

## Hands ON

We will then split up into  5 groups of three sitting at several tables around the room. I will need help selecting the groups so that the student ages and abilities are evenly distributed. Each of the 5 tables can be themed with some decor that is either regional or ethical to represent different geographical regions.

## Setup
There will be one computer per group that I will provide and several ethernet switches around the room. I will also have a router that will be setup to route traffic across different subnets.

## Lesson 1 - Network Addresses / Hosts (5 minutes)
I will give a short talk about how computer networks are organized from the Internet Protocol perspective. We primarily focus on IPv4 addressing and I will keep the details pretty simple (perhaps overly simplistic so that students can approach the concept).

We will talk about how to find the IP address of your computer and simple ways to change it.

We will then discuss the utility `ping` that allows a computer to test its connection to another host.

### Activity (10 minutes)
{Each activity should let one student be the driver on the keyboard. Each activity will rotate to another driver.}

The students will then do an activity on their groups PC to discover their IP address, change it and they will plug into a network to ping another host in the room. We can have a helper at each group to answer questions and help the students. We will unplug the network cables while the students are pinging the central host and see what happens to the ping stream.

## Lesson 2 - Switches / Routers & Encapsulation (7 minutes)
Students will learn that network communication is encapsulated in a series of 'layers'. The payload of any communication that takes place over TCP-IP takes place with several layers of encapsulation. We will talk about how devices such as switches and routers pass these messages around a network.

## Activity 2 - Telnet / NC - TCP Dump (10 minutes)
The students will then connect to another computer another group and check if they can Ping the group's computer. The will then initiate a telnet or NC session with another host on a specific port and begin typing messages to one another.

We will then have them do a tcp dump of the same thing and see what is actually being passed over the wire. We will have them try to find their payload in the dumps.

## Lesson 3 - Services (7 minutes)
The students will then learn about how networks take several paradigms. We will discuss both peer to peer networks and client - server networks. We will talk about how most everything that they do on a computer network falls into one of these paradigms. We will touch on the fact that the internet is comprised of these types of interactions between different hosts.

## Activity 3 - HTTP / QOTD (10 + minutes)
Each student's PC will be set up as a web server and a quote of the day server. They will then get the addresses of all the other computers on the network and check out the other student's services. (We will touch on the concept of security thought each activity so that students will begin to see the ways that each network activity is vulnerable to malicious activity.)

If we have time the students can also do the activity below:

They will be able to change their computer's assets (web page, quote) with a simple text editor. Instructions will be provided on how to do this. They should then checkout the new assets that the other servers are now providing.

## Activity Directions
The students will be directed to type something into their PC when transitioning from activity to lecture that will set the PC into an inactive state so that distractions are minimized. :)

I will type out directions for each activity and will include detailed steps and commands for the students to type into the terminals. Each PC will be set up and ready to roll and we will do all of the activities above from command line only (terminal sessions). The students will stay at their group's table while the lecture starts and will then be able to jump right back into the activities without much interruption.
