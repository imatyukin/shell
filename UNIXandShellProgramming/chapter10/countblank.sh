#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

n=`grep ^$ c.txt | wc -l`
echo There are $n lines blank in the file, c.txt