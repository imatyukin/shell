#!/bin/bash

# Splitting the bank file into two files : one having the pattern current account and other
# having the pattern saving account. The file names are sent as command line arguments
exec 0<$1
exec 3>$2
exec 4>$3
while read k
do
	echo "$k" | egrep 'current' 1>&3
	echo "$k" | egrep 'saving' 1>&4
done
exec 0<&-
exec 3>&-
exec 4>&-
