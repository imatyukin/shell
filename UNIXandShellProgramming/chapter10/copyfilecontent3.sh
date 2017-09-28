#!/bin/bash

if test $# -ne 3
then
	echo The number of arguments passed are less than 3
	exit
else
	cat $2 > $1
	cat $3 >> $1
	echo The file after merging the two files $2 and $3 are
	cat $1
fi
