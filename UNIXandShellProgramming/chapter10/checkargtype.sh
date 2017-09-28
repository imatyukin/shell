#!/bin/bash

check()
{
	((x=$1+1)) > /dev/null 2>&1
	if [ $? != 0 ]
	then
		echo "The number is not numeric"
	else
		echo "The number is numeric"
	fi
}
check $1
