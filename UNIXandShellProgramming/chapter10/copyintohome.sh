#!/bin/bash

k=`whoami`
if test $# -lt 1 -o $# -gt 1
then
	echo "The number of arguments are not correct"
	exit
fi
if test ! -f $1
then
	echo "The argument sent is not a file"
	exit
fi
if test ! -r $1
then
	echo "You don't have the permission to copy the file"
	exit
fi
cp $1 /Users/$k