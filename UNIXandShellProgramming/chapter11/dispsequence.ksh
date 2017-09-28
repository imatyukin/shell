#!/bin/ksh

x=1
y=10
while [ $x -le $y ]; do
	echo $x
	((x=x+1))
done
