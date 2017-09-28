#!/usr/bin/env sh

# grep: Searching Patterns

# grep option pattern filenames

# Brief description of the options used in the grep command
# Option	Description
# -c		Displays the count of the number of occurrences
# -l		Displays the list of filenames only
# -n		Displays line numbers along with lines
# -v		Displays all the lines except those matching the expression
# -I		Ignores case for matching
# -h		Omits filenames when handling multiple files

# Brief description of the expressions that can be formed using characters
# Expression	Description
# *				Matches zero or more occurrences of previous characters
# [pqr]			Matches a single character, p, q, or r
# [c1 - c2]		Matches the range between c1 and c2
# [^pqr]		Matches a single character which may be p, q, or r at the beginning of the line

# Brief description of the expressions that can be formed using strings
# Pattern			Description
# Pat				Matches the given pattern
# ?					Matches zero or one single character
# *					Repeats the pattern zero or more times
# ^pat				Matches the pattern pat at the beginning of the line
# pat$				Matches the pattern pat at the end of the line
# ? (pat1|pat2|...)	Matches zero or one of any of the patterns
# @(pat1|pat2|...)	Matches exactly one of the patterns
# *(pat1|pat2|...)	Matches zero or more of the patterns
# +(pat1|pat2|...)	Matches one or more of the patterns
# !(pat1|pat2|...)	Matches anything except any of the patterns

# Different examples of the expressions that can be formed using characters and strings
# Pattern		Matches
# ?(Mce)		'Mce' or nothing
# ?(Mce|MCE)	'Mce', 'MCE', or nothing
# @(Mce|MCE)	'Mce' or 'MCE'
# Mce			Matches only Mce and nothing else
# [Hh]*			Matches any word beginning with upper- or lower-case H
# [Hh]?			Matches any two characters beginning with upper- or lower-case H
# *[Hh]*		Matches any word containing an upper- or lower-case H
# H|h			Matches only one character, upper- or lower-case H
# [aeiouAEIOU]	Matches only one character and it must be a vowel (a, e, i, o, or u)
# [0-9]			Matches one digit in the range 0–9
# [a-z A-Z]		Matches an alphabetic character

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

grep "[mM]ic*[rR]ochip" bank.lst
echo '\n================================ RESTART ================================\n'
grep current bank.lst
echo '\n================================ RESTART ================================\n'
grep current bank.lst bnk.lst
echo '\n================================ RESTART ================================\n'
grep 'Chirag' bank.lst
echo '\n================================ RESTART ================================\n'
grep -c current bank.lst
echo '\n================================ RESTART ================================\n'
grep -n current bank.lst
echo '\n================================ RESTART ================================\n'
grep -v current bank.lst
echo '\n================================ RESTART ================================\n'
grep -l current *.lst
echo '\n================================ RESTART ================================\n'
grep -i current bank.lst
echo '\n================================ RESTART ================================\n'
grep -e current -e Current bank.lst
echo '\n================================ RESTART ================================\n'
grep -2 -i Jyotsna bank.lst
echo '\n================================ RESTART ================================\n'
grep "r" bank.lst
echo '\n================================ RESTART ================================\n'
grep "r*" bank.lst
echo '\n================================ RESTART ================================\n'
grep "^1" bank.lst
echo '\n================================ RESTART ================================\n'
grep "^11" bank.lst
echo '\n================================ RESTART ================================\n'
grep [Cc]urrent bank.lst
echo '\n================================ RESTART ================================\n'
grep -h "current" *.lst
echo '\n================================ RESTART ================================\n'
grep ".....nt" bank.lst
echo '\n================================ RESTART ================================\n'
grep "cu...nt" bank.lst
echo '\n================================ RESTART ================================\n'
grep "t$" bank.lst
