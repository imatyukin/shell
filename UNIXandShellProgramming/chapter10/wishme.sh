#!/bin/bash

h=`date +"%T" | cut -c1-2`
if test $h -lt 12
then
	echo "Good Morning"
else
	if test $h -lt 18
	then
		echo "Good Evening"
	else
		echo "Good Night"
	fi
fi
