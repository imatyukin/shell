#!/usr/bin/env sh

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter4/

cut -f2 -d "," name.txt
echo '\n================================ RESTART ================================\n'
cut -f1 telephone.txt
cut -f2 -d "," name.txt > names.txt
cut -f2 telephone.txt > numbers.txt
echo '\n================================ RESTART ================================\n'
paste names.txt numbers.txt
echo '\n================================ RESTART ================================\n'
paste -d":" names.txt numbers.txt
echo '\n================================ RESTART ================================\n'
paste -s names.txt numbers.txt
echo '\n================================ RESTART ================================\n'
split -l 2 numbers.txt temp
wc telephone.txt
wc -l telephone.txt
echo '\n================================ RESTART ================================\n'
sort -k2 telephone.txt
echo '\n================================ RESTART ================================\n'
head -3 telephone.txt name.txt
echo '\n================================ RESTART ================================\n'
tail -2 telephone.txt
echo '\n================================ RESTART ================================\n'
tail +3 telephone.txt
echo '\n================================ RESTART ================================\n'
tail -5c telephone.txt
echo '\n================================ RESTART ================================\n'
tail -3r telephone.txt
echo '\n================================ RESTART ================================\n'
head -4 telephone.txt | tail +3
echo '\n================================ RESTART ================================\n'
# diff
# d: delete
# c: change
# a: add
diff users.txt customers.txt
echo '\n================================ RESTART ================================\n'
cmp users.txt customers.txt
echo '\n================================ RESTART ================================\n'
# -l It prints the byte number and the differing byte values in octal for each difference.
cmp -l users.txt customers.txt
# -s It displays nothing but the return exit status on the screen. The status returned can be any of the following:
# 	0: If the two files are identical
#	1: If the two files are different
#	>1: If an error occurs while reading the files
cmp -s users.txt customers.txt
echo $?
# Compare the two files after skipping the offset of 12 and 14 bytes from the two files.
# Output 0 confirms that the two files are exactly the same after giving the offset values.
cmp -s users.txt customers.txt 12 14
echo '\n================================ RESTART ================================\n'
uniq a.txt
echo '\n================================ RESTART ================================\n'
sort a.txt | uniq
echo '\n================================ RESTART ================================\n'
sort a.txt | uniq -u
echo '\n================================ RESTART ================================\n'
sort a.txt | uniq -d
echo '\n================================ RESTART ================================\n'
sort a.txt | uniq -c
echo '\n================================ RESTART ================================\n'
# -1 It suppresses the display of the content that is unique to file1. It also displays the unique content in file2.
# -2 It suppresses the display of the content that is unique to file2. It also displays the unique content in file1.
# -3 It suppresses the display of the content that is common to both file1 and file2, that is, it displays the unique content in file1 and file2.
# file1 and file2 These are the two files being compared.
comm users.txt customers.txt
echo '\n================================ RESTART ================================\n'
comm -1 users.txt customers.txt
echo '\n================================ RESTART ================================\n'
comm -2 users.txt customers.txt
echo '\n================================ RESTART ================================\n'
comm -3 users.txt customers.txt
echo '\n================================ RESTART ================================\n'
# Real time represents the time taken by the command (from its initiation to termination) to execute.
# User time represents the time taken by the command to execute its own code, that is, the code run in user mode.
# Sys time is the amount of CPU time spent in the kernel for running the command.
time ls -ltR
