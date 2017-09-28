#!/usr/bin/env sh

# paste: Pasting Content

# paste [–d delimiter] [files]

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

paste nn tt
echo '\n================================ RESTART ================================\n'
paste -d"|" school.txt bank.lst
echo '\n================================ RESTART ================================\n'
cut -d"|" -f1,4- school.txt | paste -d"|" - bank.lst

