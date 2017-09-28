#!/bin/ksh

if [[ -f $1 ]]
then
	if [[ -x $1 ]]
	then
		print "$1 is an executable file"
	else
	print "$1 is a non executable file"
	fi
else
	print "$1 is not a regular file"
fi
