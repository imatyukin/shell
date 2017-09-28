#!/bin/bash

while true
do
	echo "Enter password"
	stty -echo
	read h
	stty sane
	if [ $h = "mce" ]
	then
		echo "Welcome"
		break
	else
		echo "Wrong password try again"
	fi
done
