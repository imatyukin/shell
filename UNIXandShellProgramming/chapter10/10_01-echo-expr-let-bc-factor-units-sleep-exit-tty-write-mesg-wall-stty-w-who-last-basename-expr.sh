#!/usr/bin/env sh

# echo: Displaying Messages and Values
# echo "Messages/$Variables"

echo "Welcome to MCE"
echo '\n================================ RESTART ================================\n'

# Variables
# Variable = value

n=15
echo "The value of n is $n"
echo '\n================================ RESTART ================================\n'

# expr: Evaluating Expressions
# expr arg1 operator arg2 ...

x=3
y=5
expr $x + $y
echo '\n================================ RESTART ================================\n'
z=`expr $x + $y`
echo $z
echo '\n================================ RESTART ================================\n'
expr 3 + 5
echo '\n================================ RESTART ================================\n'
expr 3 \* 2
echo '\n================================ RESTART ================================\n'

# let: Assigning and Evaluating Expressions
# let variable1=value/expression [variable2=value/expression]...

let x=15+10
echo $x
echo '\n================================ RESTART ================================\n'
echo $((15+10))
echo '\n================================ RESTART ================================\n'
x=22 y=28 z=5
((z=x+y+z))
echo $z
echo '\n================================ RESTART ================================\n'

# bc: Base Conversion

# bc
# 10/2*2
# 2.5*2.5+2
# quit

# bc
# scale=2
# 25/2
# quit

# By setting the variables, ibase to 2 and obase to 16, all the input values are taken as binary numbers while all the output values are displayed in hexadecimal format.
# bc
# ibase = 2
# obase = 16
# 1010
# A
# quit

# bc
# sqrt(49)
# quit

# bc –l
# scale=2
# s(3.14)
# quit

# bc
# for (i=1; i<=5; i=i+1) i
# quit

a=81.3
b=15.7
c=`echo $a + $b | bc`
d=`echo $a \* $b | bc`
echo $c $d

echo '\n================================ RESTART ================================\n'

# factor: Factorizing Numbers
# factor [number]

# factor 15
# factor 28

# units: Scale Conversion

# units
# 586 units, 56 prefixes
# You have: inch
# You want: cm
#        * 2.54
#        / 0.39370079

# sleep: Suspending Execution

# sleep t

sleep 5

# exit: Terminating Programs

# exit
# % operator It returns the remainder.

((m=14%2))
((n=13%2))
echo $m
echo $n

echo '\n================================ RESTART ================================\n'

# $?: Observing Exit Status

# Brief description of a few of the exit statuses
# Exit value	Exit status
# 0				Success
# Non			Zero Failure
# 2				Incorrect usage
# 126			Not executable
# 127			Command not found

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10
grep Chirag bank.lst
echo $?
echo '\n================================ RESTART ================================\n'
grep Bintu bank.lst
echo $?
echo '\n================================ RESTART ================================\n'
greep Chirag bank.lst
echo $?
echo '\n================================ RESTART ================================\n'

# tty: Terminal Command

# tty [–s]

tty
echo '\n================================ RESTART ================================\n'

# write: Sending and Receiving Messages

# write options user_id terminal

write igor console
echo '\n================================ RESTART ================================\n'

# mesg: Controlling Delivery of Messages

# tty
# /dev/ttys000
# ls -l /dev/ttys000
# crw--w----  1 igor  tty   16,   0 24 сен 12:41 /dev/ttys000
# mesg n
# crw-------  1 igor  tty   16,   0 24 сен 12:41 /dev/ttys000
# mesg y
# crw--w----  1 igor  tty   16,   0 24 сен 12:43 /dev/ttys000
# mesg

# wall: Broadcasting Message

# wall [ message ]

# stty: Setting and Confi guring Terminals

# stty function control_character

# Brief description of the functions and control characters that stty can change
# Function	Description 											Control characters
# eof		End of file character—Exits from a program				^d (Ctrl-d)
# erase		Erases the previous character							^\? (DELETE)
# kill		Erases the entire line									^u (Ctrl-u)
# werase	Erases the previous word								^w (Ctrl-w)
# intr		Interrupts the current job								^c (Ctrl-c)
# quit		Terminates the current job, creates a core file			^\\ (Ctrl-\)
# susp		Pauses the current job and puts it in the background	^z (Ctrl-z)
# rprnt		Redisplays the current line								^r (Ctr-r)

# stty erase \^z
# stty kill '^y'
# stty eof \^e
# stty erase ^h

# stty [–a][–g] [echo][sane][olcuc][iuclc][icanon][isig]

# Brief description of the options used with the stty command
# Option		Description
# –a			Displays all the settings for the terminal
# –g			Displays the current settings in the stty-readable form—the format that can be used as an argument to another stty command
# stty echo		Restores screen echo
# stty sane		Sets the terminal configuration to a setting that can be used with a majority of the terminals, that is, default setting
# stty olcuc	Maps lower case to upper case on output
# stty iuclc	Maps upper case to lower case on input
# stty icanon	Turns on the canonical mode and requires Enter key to read
# stty isig		Enables interrupt, quit, and suspend special characters (INTR, QUIT, SWTCH, and SUSP).

# w ; who: Activities of Logged in User

w;who
echo '\n================================ RESTART ================================\n'

# last: Listing Last Logged

last
echo '\n================================ RESTART ================================\n'

# basename: Extracting Base Filename

# basename string [extension]

basename  /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10/saving.lst
echo '\n================================ RESTART ================================\n'
basename school.txt txt

# expr—Advanced Features

# Brief description of the expressions formed with the expr command
# Expression				Description
# Expr "stg" : '\(.\)'		Extracts the first character from the string stg
# expr "stg" : '\(..\)' 	Extracts the first two characters from the string stg
# expr "stg" : '\(...\)'	Extracts the first three characters from the string stg
# expr "stg" : '.*\(.\)'	Extracts the last character from the string stg
# expr "stg" : '.*\(..\)'	Extracts the last two characters from the string stg
# expr "stg" : '.*\(....\)'	Extracts the last four characters from the string stg
# expr "stg" : '\(.*\).'	Extracts all the characters except the last character from the string stg
# expr "stg" : '\(.*\)...'	Extracts all the characters from the string stg leaving the last three characters
# expr "stg" : '...\(..\)'	Extracts the fourth and fifth characters from the string stg
# expr "stg" : '..\(....\)'	Extracts characters from the third to the sixth, from the string stg

