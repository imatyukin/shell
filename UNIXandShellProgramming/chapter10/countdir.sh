#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming

n=0
for f in *
do
	if test -d $f
	then
		((n++))
	fi
done
echo "The number of directories are $n"
