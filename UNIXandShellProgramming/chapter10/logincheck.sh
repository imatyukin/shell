#!/bin/bash

echo "Enter login name: "
read n
if grep $n LOGFILE >/dev/null
then
	echo "Enter password: "
	stty -echo
	read p
	stty sane
	if grep $p PASSWORD >/dev/null
	then
		echo "Welcome"
	else
		echo "Access Denied"
	fi
else
	echo "Sorry! You cannot work"
fi
