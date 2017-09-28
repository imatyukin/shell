#!/bin/bash

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

ls * >tmp.lst
grep "^[1–9][0–9]" tmp.lst
