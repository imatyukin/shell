#!/bin/bash

while getopts ac variable
#above command means, a and c are the allowed options
do
	case $variable in
		a) echo "a option will be processed";;
		c) echo "c option will be processed";;
	esac
done
