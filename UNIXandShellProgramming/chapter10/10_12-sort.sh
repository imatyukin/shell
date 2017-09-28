#!/usr/bin/env sh

# sort: Sorting Input

# sort filename
# sort +p1 – p2 filename

# Brief description of the options used in the sort command
# Option	Description
# -n		Sorts numerical values instead of ASCII, ignoring blanks and tabs
# -r		Sorts in reverse order
# -f		Sorts upper and lower case together, that is, ignores differences in case.
# -u		Displays unique lines, that is, eliminates duplicate lines in the output
# -b		Ignores leading spaces while sorting
# filename	Represents the fi le to be sorted

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

sort bank.lst -o bnk.lst
echo '\n================================ RESTART ================================\n'
sort -u bank.lst
echo '\n================================ RESTART ================================\n'
sort -ru bank.lst
echo '\n================================ RESTART ================================\n'
sort -k2 -u bank.lst
echo '\n================================ RESTART ================================\n'
sort -k2 -f -u bank.lst
echo '\n================================ RESTART ================================\n'
sort -n -k3 -u bank.lst
echo '\n================================ RESTART ================================\n'
sort -k3 -t"/" -un bank.lst

