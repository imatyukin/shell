#!/bin/bash

cd $1
x=1
for filename
in *
do
	if test ! -d $filename -a -x $filename -a $x -le 5
	then
		echo $filename
		((x=x+1))
	fi
done
