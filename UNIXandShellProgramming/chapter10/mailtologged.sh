#!/bin/bash

m=0
while true
do
	who | grep $1 > /dev/null
	if test $? -eq 0
	then
		echo "You have logged $m minutes late | mail $1"
		break
	else
		sleep 60
		((m=m+1))
	fi
done
