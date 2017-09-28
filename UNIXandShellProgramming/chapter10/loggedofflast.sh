#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10
dd=`date +%d`
hh=`date +%H`
mm=`date +%M`
last >tmp
num=`cat tmp | wc -l`
((num=num-1))
head -$num tmp > ttmp
exec 0< ttmp
while read f
do
	n=`echo "$f" | cut -c1-9`
	d=`echo "$f" | cut -c49-50`
	h=`echo "$f" | cut -c52-53`
	m=`echo "$f" | cut -c55-56`
	((difm = mm - m))
	((difh = hh-h))
	((mint = difm + difh * 60))
	echo $difm
	echo $difh
	echo $mint
	if test $d -eq $dd
	then
		if test $mint -le 10
		then
			echo $n
		fi
	fi
done
