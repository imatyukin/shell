#!/bin/bash

echo "Enter the string to search: "
read s
if [ -z $s ]
then
	echo "You have not entered the string"
	exit 1
else
	echo "Enter the file to be used: "
	read f
	if [ -z $f ]
	then
		echo "You have not entered the file name"
		exit 2
	else
		grep $s $f || echo "Pattern not found"
	fi
fi
