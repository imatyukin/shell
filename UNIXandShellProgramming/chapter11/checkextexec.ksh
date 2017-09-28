#!/bin/ksh

for i in *.ksh
do
	if [ -x $i ]; then
		./$i
	fi
done
unset i
