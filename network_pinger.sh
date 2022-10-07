#!/bin/bash

#This script looks for other devices on a private network

#Get input network range from user
echo "Please list your starting ip address:"
read -p "192.168.1." ipstart
read -p "192.168.1." ipend

#ARP table
for (( net=$ipstart ; net<=$ipend ; net=net+1))
do
	ping -c 1 192.168.1.$net > /dev/null 2>&1 &
done

#Make an ARP file
arp -a | cut -d " " -f 4 > iphits.txt

#Display results to stdout
echo "Here are the other devices on this network:"
grep ":" iphits.txt
