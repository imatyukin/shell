#!/bin/bash

echo "Enter password"
stty -echo
read pswd
stty echo
if [ $pswd = "mce" ];then
	echo "You are Welcome"
	exit
else
	echo "The terminal is locked"
	stty -echo
	stty -isig
	while [ "$pswd" != "mce" ]
	do
		echo "Enter the password again"
		read pswd
	done
	stty isig
	stty echo
	echo "The terminal is unlocked"
fi
