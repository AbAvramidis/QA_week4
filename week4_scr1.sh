#!/bin/bash

echo "The hostname is: "
echo "-----------------"
hostname
echo "The IP address of the machine is: "
echo "---------------------------------"
#hostname -I
#ip addr show | grep -i 'inet'
ifconfig | grep -i 'inet' | cut -d ' ' -f 12-13

echo "The device for the NIC is: "
echo "---------------------------"
netstat -i

echo "Or"
ip link show

echo "Ping by IP"
echo "----------"
ping 192.168.1.11 -c 5

echo "Ping the User Kai"
echo "-----------------"

x=$(grep -i 'Kai' /etc/hosts | wc -l)
echo $x
if [[ $x == 1 ]]
then 
	echo "Exist"
	sed -i '/Kai/d' /etc/hosts
else	
	echo "Added"
	echo "192.168.1.11 Kai" >> /etc/hosts
fi


ping Kai -c 5


