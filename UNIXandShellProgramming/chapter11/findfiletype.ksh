#!/bin/ksh

if [[ ! -e $1 ]]; then
	print "file $1 does not exist."
elif [[ -d $1 ]]; then
	print "$1 is a directory "
elif [[ -f $1 ]]; then
	print "$1 is a regular file."
else
	print "$1 is a special type of file."
fi
