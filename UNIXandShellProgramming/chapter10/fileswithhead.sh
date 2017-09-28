#!/bin/bash

cd $1
for f in *
do
	k=`head -1 $f`
	if $k == $2
	then
		echo $f
	fi
done
