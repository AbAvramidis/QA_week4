#!/bin/bash

nc -z 192.168.1.200 12345
x=$(echo $?)
echo $x

if [[ $x == "1" ]]
then
	echo "error"
else
	echo "work"
fi


