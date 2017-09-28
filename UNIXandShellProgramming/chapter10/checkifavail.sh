#!/bin/bash

if [ -r $1 ]
then
	cat $1
else
	until [ -r $1 ]
	do
		echo "File, $1 is not available .. waiting"
		sleep 5
	done
	echo "File, $1 is available, its content is as given below:"
	cat $1
fi
