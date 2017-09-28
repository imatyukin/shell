#!/bin/bash

n=1
until test $n -gt 10
do
	echo $n >> /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/d.txt
	((n=n+1))
done
