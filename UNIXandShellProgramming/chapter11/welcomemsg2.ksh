#!/bin/ksh

echo "Enter your Name "
read name
if [[ -n $name ]];then
	echo "Welcome! $name"
else
	echo "You have entered a zero length string "
fi