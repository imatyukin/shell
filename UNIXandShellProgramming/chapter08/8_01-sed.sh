#!/usr/bin/env sh

# Brief description of options used with the sed editor
# -n Suppresses duplicate line printing
# -f Reads instructions from a file
# -e Interprets the next string as an instruction or a set of instructions (for a single instruction, -e is optional)

# List of actions performed while using sed
# i\ Inserts text before the current line
# a\ Appends text below the current line
# c\ Changes text in the current line with the new text
# d Deletes line(s)
# p Prints line(s) on a standard output
# q Quits after reading up to the addressed line
# = Prints the line number addressed
# s/s1/s2/ Substitutes string s1 with string s2
# r filename Places the contents of the file filename after line
# w filename Writes the addressed lines to the file, filename

# $ sign This selects the last line of the file
# Negation operator (!) Can be used with any action

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter8/
sed '3q' bank.lst
echo '\n================================ RESTART ================================\n'
sed '1,2p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '1,2p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '$p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '3,$!p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '3,$p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '$!p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '5,7p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '5,7!p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n -e '1,2p' -e '7,9p' bank.lst
echo '\n================================ RESTART ================================\n'

echo 'Adding text\n'
# sed 'a\
# ... /* lines to be appended */
# ... /* lines to be appended */
# ...
# ' file

# sed -i '' '$a\
# 117	vinay		4500		11/08/2011	current\
# 118	hitesh		3300		15/09/2012	saving
# ' bank.lst

sed 'i\
this is bank file
' bank.lst
echo '\n================================ RESTART ================================\n'
sed 'i\
' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/current/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/[Cc]urrent/p' bank.lst
echo '\n================================ RESTART ================================\n'
# sed -n '/current/w bkk.lst' bank.lst
# cat bkk.lst
# sed -n -e '/current/w bkk.lst' -e '/saving/w bkw.lst' bank.lst
# cat bkw.lst

# The statement reads the sed commands from the file, chirag.fil, and applies them to the file bank.lst
# sed -n -f chirag.fil bank.lst

echo 'Substitution\n'
# sed [address]s/string1/string2/

sed '1,5s/current/cur/' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n 's/current/fixed/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed 's/current/fixed/' bank.lst
echo '\n================================ RESTART ================================\n'
sed 's/current/fixed/w bkk.lst' bank.lst
echo '\n================================ RESTART ================================\n'
sed = bank.lst
echo '\n================================ RESTART ================================\n'
sed -n 'p' bank.lst bkk.lst
echo '\n================================ RESTART ================================\n'
sed '1,2 d' bank.lst
echo '\n================================ RESTART ================================\n'

echo 'Context addressing\n'
# sed "/regular_expression/command" filename

var=Arya
sed -n "/$var/p" 'bank.lst'
echo '\n================================ RESTART ================================\n'

echo 'Regular expression\n'
# Brief description of meta characters used in building regular expressions
# [ ] This matches anything inside the square brackets. For example, [ab] checks matches for a or b.
# – This is used to define a range. For example, [a-d] checks matches for the characters from a to d (inclusive).
# ^ The ^ (caret) within square brackets negates the expression. For example, [^a] matches anything except a. Similarly, [^ab] matches anything except a and b and [^a–d] matches everything except a to d.
# ? This matches the preceding character 0 or 1 time. For example, an?d will check matches for ad and and.
# * This matches the preceding character 0 or more times. For example, an*d will check matches for ad, and, annd, among others.
# + This matches the previous character 1 or more time. For example, an+d will check matches for and and annd, among others.
# {n} This matches the preceding character(s) n number of times. For example,[0-9]{3} checks matches for any three-digit integer, such as 123 and 329.
# {n,m} This matches the preceding character at least n times but not more than m times. For example, [0-9] {3,5} will check matches for integers consisting of three to five digits, such as 123, 1234, and 29056, among others.
# {n,} This matches the preceding character n or more times. For example, [0-9]{3, } will check matches for integers consisting of three or more digits, such as 123, 1234, 12345, and 123456.
# .(dot) This matches any character. For example, a.b will match for a1b, abb, axb, and a b. Similarly, 1.2 will match for 112, 1 2, 1a2, 1x2, and so on. To find a floating value, we need to use the escape key, i.e., prefix dot (.) with a ‘\’ backslash. For example, 1\.2 will match for 1.2.

sed -n '/am/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/[Cc]*/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/./p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/[a-z]*/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/[a-z]/p' bank.lst
echo '\n================================ RESTART ================================\n'

echo 'Remembered Patterns\n'
# sed [options] \(remembered_pattern1\) [\(remembered_pattern2\)]… file_name

# The statement matches the duplicated characters
sed -n '/\([a-z]\)\1/p' bank.lst
echo '\n================================ RESTART ================================\n'
# The example matches the pattern that consists of three characters, where the first and third characters are exactly the same.
sed -n '/\([a-z]\)\([a-z]\)\1/p' bank.lst
echo '\n================================ RESTART ================================\n'
# The example matches the pattern that consists of three characters and where the second and the third characters are exactly the same.
sed -n '/\([a-z]\)\([a-z]\)\2/p' bank.lst
echo '\n================================ RESTART ================================\n'
# The example matches the duplicate words in the file bank.lst.
sed -n '/\([a-z][a-z]*\)\1/p' bank.lst
echo '\n================================ RESTART ================================\n'
sed -n '/\([a-z]\)\([a-z]\)[a-z]\2\1/p' palindrome.lst # level, rotor, madam
echo '\n================================ RESTART ================================\n'
sed -n '/\([a-z]\)\([a-z]\)\([a-z]\)\3\2\1/p' palindrome.lst # redder, succus, terret
