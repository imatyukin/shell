#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

n=`ls -i $1`
# Storing the inode number of the file sent as command line argument in the variable n
ls -ilR > tmp.lst
k=`grep $n tmp.lst | wc -l`
echo "There are $k links of $1 file"
