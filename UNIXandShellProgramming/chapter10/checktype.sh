#!/bin/bash

echo "Enter the name: "
read f
if test -f $f
then
	echo "$f is a file"
else
	if test -d $f
	then
		echo "$f is a directory"
	else
		echo "$f is something else"
	fi
fi
