#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

echo "Enter the file name to search: "
read f
ls -R > tmp.lst
if grep $f tmp.lst >/dev/null
then
	echo "$f exists in the current directory"
else
	echo "$f does not exist in the current directory"
fi
