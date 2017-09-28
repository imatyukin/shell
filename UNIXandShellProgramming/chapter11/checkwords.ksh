#!/bin/ksh

if grep $2 $1 || grep $3 $1
then
	echo "The words $2 or $3 exists in the file $1"
fi