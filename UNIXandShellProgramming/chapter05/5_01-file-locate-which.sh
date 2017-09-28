#!/usr/bin/env sh

file /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter5/5_02-find.sh
echo '\n================================ RESTART ================================\n'
file /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter4/*
echo '\n================================ RESTART ================================\n'
file -f /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter5/filenames.txt
echo '\n================================ RESTART ================================\n'
locate ".txt"
echo '\n================================ RESTART ================================\n'
locate -i "filenames.txt"
echo '\n================================ RESTART ================================\n'
which ls