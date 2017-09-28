#!/bin/bash

if test $# -ne 3
then
	echo "You have not entered 3 arguments"
	exit 3
else
	if grep $1 $2 > $3
	then
		echo "$1 pattern found in file, $2. File by name $3 is created containing the pattern"
	else
		echo "$1 pattern not found in file, $2"
	fi
fi
