#!/usr/bin/env sh

# cut: Slicing Input

# cut [options] filename

# Brief description of the options used in the cut command
# Option	Description
# -c		This is used for cutting columns.
# -f		This is used for cutting fields. The fields are assumed to be separated by tab space.
# filename	This represents the file from which we wish to cut the desired columns or fields.

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

cut -c 6-22,30-35 bank.lst
echo '\n================================ RESTART ================================\n'
cut -f2 bank.lst
echo '\n================================ RESTART ================================\n'
cut -f2,3 -d "	" bank.lst
echo '\n================================ RESTART ================================\n'
cut -f2 Names
cut -f2 Telephone
cut -f2 Names > nn
cut -f2 Telephone > tt
