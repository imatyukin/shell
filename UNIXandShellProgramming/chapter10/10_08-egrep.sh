#!/usr/bin/env sh

# egrep: Searching Extended Regular Expressions

# egrep [options] [regular_expression] [files]

# Brief description of the expressions used by the egrep command
# Expression	Description
# ch+			Matches one or more occurrences of the character ch
# ch?			Matches zero or one occurrence of the character ch
# exp1 | exp2	Matches the expressions exp1 or exp2
# (x1 | x2) x3	Matches the expressions x1x3 or x2x3

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

egrep "r" bank.lst
echo '\n================================ RESTART ================================\n'
egrep "r+" bank.lst
echo '\n================================ RESTART ================================\n'
egrep "r?" bank.lst
echo '\n================================ RESTART ================================\n'
egrep '^[A–D].*f$' bank.lst
echo '\n================================ RESTART ================================\n'
egrep -f chirag.lst bank.lst

