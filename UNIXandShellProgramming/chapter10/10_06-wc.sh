#!/usr/bin/env sh

# wc: Counting Lines, Words, and Characters

# wc [options] filename

# Brief description of the options used in the wc command
# Option	Description
# –l		It returns the total number of lines in a file.
# –w		It returns the total number of words in a file.
# –c		It returns the total number of characters in a file.
# filename	It is the name of the file whose number of characters, words, or lines we wish to know.

wc /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt
echo '\n================================ RESTART ================================\n'
wc -l /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt

