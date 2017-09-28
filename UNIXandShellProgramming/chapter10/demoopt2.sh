#!/bin/bash

getopts d:c: op
case $op
	in
	d) k=$OPTARG
		ans=`expr $k \* 10000`
			echo "The $k km is converted to $ans decimetre";;
	c) k=$OPTARG
		ans=`expr $k \* 100000`
			echo "The $k km is converted to $ans centimetre";;
	\?)k=$1;
		ans=`expr $k \* 1000`
			echo "The $1 km is converted to $ans metre";;
esac
