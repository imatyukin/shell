#!/bin/ksh

echo "Enter your Name "
read name
if [[ $name = "John" ]];then
	echo "Welcome, ${name}!"
else
	echo "Sorry! You are not authorized"
fi