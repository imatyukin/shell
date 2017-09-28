#!/bin/bash

who -u | cut -c1-9,30-34 > tmp.lst
cat tmp.lst | while read f
do
	set $f
	echo $2 > tmp2.lst
	hr='cat tmp2.lst | cut -f1 -d":"'
	mn='cat tmp2.lst | cut -f2 -d":"'
	if test $hr -ge 10 -a $mn -ge 00 -a $hr -le 10 -a $hr -le 59
	then
		echo $f
	fi
done
