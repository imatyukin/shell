#!/usr/bin/env sh

# uniq: Eliminating and Displaying Duplicate Lines

# uniq [options] filename

# Brief description of the options used with the uniq command
# Option	Description
# -u		Displays only unique lines
# -d		Displays only duplicate lines
# -c		Displays all lines with duplicate count
# -f		Skips leading fields before checking for duplicate text
# -s		Skips leading characters before checking for duplicate text

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

uniq bank.lst
echo '\n================================ RESTART ================================\n'
uniq -u bank.lst
echo '\n================================ RESTART ================================\n'
uniq -d bank.lst
echo '\n================================ RESTART ================================\n'
uniq -c bank.lst
echo '\n================================ RESTART ================================\n'
uniq -d -f 2 bank.lst
echo '\n================================ RESTART ================================\n'
uniq -d -s 5 bank.lst

