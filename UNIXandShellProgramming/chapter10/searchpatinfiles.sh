#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

echo "Enter the pattern to search: "
read k
for f in *
do
	if grep $k $f
	then
		echo The file, $f contains the pattern, $k
	fi
done
