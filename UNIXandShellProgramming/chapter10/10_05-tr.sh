#!/usr/bin/env sh

# tr: Applying Translation

# tr [ options ] [ set1 [ set2 ] ]
# The characters specified in set1 are mapped to the corresponding characters in set2.

# Brief description of the options used in the tr command
# Option	Description
# -d		Deletes specified characters in set1 from the input supplied
# -s		Squeezes repeated characters specified in set1 into a single character
# -c		Applies translation on the complement of the characters mentioned in set1, that is, on the characters that are not specified in set1

echo 'it is very easy to use' | tr "aeiou" "AEIOU"
echo '\n================================ RESTART ================================\n'
echo 'it is very easy to use' | tr "aeiou" "AE?"
echo '\n================================ RESTART ================================\n'
echo 'it is very easy to use' | tr "aei" "AEIOU"
echo '\n================================ RESTART ================================\n'

# Deleting matching characters

echo 'it is very easy to use' | tr -d "aeiouAEIOU"
echo '\n================================ RESTART ================================\n'
echo 'HALLOW hallow' | tr -d "a-z"
echo '\n================================ RESTART ================================\n'
tr '[a-z]' '[A-Z]' < /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt
echo '\n================================ RESTART ================================\n'
tr -s A B < /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt
echo '\n================================ RESTART ================================\n'
tr -d C < /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt
echo '\n================================ RESTART ================================\n'
tr -cd m < /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/school.txt
echo '\n================================ RESTART ================================\n'
echo 'it is very easy to use' | tr -s "i" "s"

