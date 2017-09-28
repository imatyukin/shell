#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

sort file1 -o file1
sort file2 -o file2
cut -f1 file1 > rollnum
cut -f2 file1 > name
cut -f2 file2 > sub1
cut -f3 file2 > sub2
paste rollnum name sub1 sub2 > file3
sort file3 -o file3
