#!/usr/bin/env sh

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

cut -f1 -d":" /etc/passwd > usrnme
grep "^r" usrnme
