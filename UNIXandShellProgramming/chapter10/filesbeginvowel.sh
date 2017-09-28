#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

for f in *
do
	if test -f $f
	then
		echo $f >> tmp.lst
	fi
done
grep "^[aeiou]" tmp.lst
