#!/bin/bash

strcmp()
{
	if [ $1 = $2 ]
	then
		echo "$1 is same as $2"
	else
		echo $1 > tmp.lst
		echo $2 >> tmp.lst
		sm=`sort tmp.lst | head -1`
		if [ $sm = $1 ]
	then
		echo "$1 is smaller then $2"
	else
		echo "$1 is larger then $2"
		fi
	fi
}
strcmp $1 $2
