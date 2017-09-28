#!/bin/bash

echo "Enter the name of the person: "
read u
cut -f1,5 -d":" /etc/passwd > tmp
if grep $u tmp > /dev/null
then
	if who |grep $u > /dev/null
	then
		echo "$u is the authorized person and is currently logged in"
	else
		echo "$u is the authorized person but is not logged in"
	fi
	else
		echo "$u is not the authorized person to use this system"
fi
