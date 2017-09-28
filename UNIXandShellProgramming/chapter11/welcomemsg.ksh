#!/bin/ksh

echo "Enter your Name: "
read name
if [[ -z $name ]];then
	echo "You have entered a zero length string "
else
	echo "Welcome! $name"
fi