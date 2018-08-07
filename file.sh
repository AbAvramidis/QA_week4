#!/bin/bash

echo "Add a new USER: "
read -p "Enter a username! " name

x="$(cat /etc/passwd | grep "${name}" /etc/passwd | wc  -l)"

if [[ $x -eq "1" ]]; then
	echo "The user already exists"
else

	read -p "Enter a password: " pass
	useradd "${name}"
	passwd  "${name}"
fi 

