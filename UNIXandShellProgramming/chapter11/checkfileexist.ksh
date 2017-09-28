#!/bin/ksh

ls -l $1 > /dev/null 2>&1
if [[ $? != 0 ]]; then
	print "The file, $1 does not exists"
	exit
else
	print "The file, $1 exists"
fi
