#!/bin/bash

echo "Enter the string to search and the filename: "
read s f
if [ -n "$s" -a -n "$f" ]
then
	grep "$s" $f || echo "Pattern not found"
else
	echo "At least one input is a null string"
	exit 1
fi
