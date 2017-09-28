#!/usr/bin/env sh

# awk '/pattern/ {action}' file(s)

# pattern is a regular expression that defines the address on which action has to be applied.
# action is one or more commands that we want to apply on the matching patterns.
# If pattern is omitted, AWK performs the specified actions for each input line of the file(s).

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter9

# all the records
awk '{ print }' bank.lst
echo '\n================================ RESTART ================================\n'

# print: PRINTING RESULTS

# print [special variables]
# special variables represent the comma separated special variables, $1, $2, etc.
# If print statement is used without any special variable, it prints the entire line.

# displays selected fields of the input file
awk '{ print $1,$2,$3 }' bank.lst

# AWK uses the special variable $0 to indicate the entire line.
echo '\n================================ RESTART ================================\n'

# printf: FORMATTING OUTPUT

# printf "format string", special_variable1, special_variable2, ...
# The format string consists of format specifiers that define the format in which we wish to display the special variables.
# The format specifiers are specified for each special variable being displayed and usually specify the data type and width or space assigned to each.

# The list of format specifiers that are most commonly used in the printf statement:
# Format specifier What is displayed
#	%d				Integers
#	%f				Float
#	%s				Strings
#	%c				Character
#	%e				Number in scientific (exponential) notation

# This command will print the first field in the field width of six digits (if the field has only a few digits, it is padded with white spaces).
# The second field is displayed in the field width of 20 characters. The − (minus) sign in %−20s is for left alignment.
# The last field is displayed in the field width of seven digits.
awk '{ printf "%6d %-20s %7d \n",$1,$2,$3 }' bank.lst
echo '\n================================ RESTART ================================\n'

# DISPLAYING CONTENT OF SPECIFIED PATTERNS

# awk '/pattern/ {action}' file(s)

# This command selects all customers having current account in bank.lst, that is, all lines/records having the pattern current are displayed.
awk '/current/ { print }' bank.lst
echo '\n================================ RESTART ================================\n'
# Printing is the default action of AWK.
awk '/current/' bank.lst
echo '\n================================ RESTART ================================\n'
# The single quotes around the pattern are optional.
awk /current/ bank.lst
echo '\n================================ RESTART ================================\n'
# This command prints all the lines/records from the bank.lst file that have the pattern current in it.
# $0 refers to the complete record.
awk '/current/ { print $0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# Displays specific fields of the file that match the given pattern
# The , (comma) is used to delimit the field specifications.
awk '/saving/ { print $2,$3,$4 }' bank.lst
echo '\n================================ RESTART ================================\n'

# COMPARISON OPERATORS

# Brief description of the expressions made by comparison operators
# Operator 	Description
# x < y		Returns true if x is less than y
# x <= y	Returns true if x is less than or equal to y
# x == y	Returns true if x is equal to y
# x > y		Returns true if x is greater than y
# x >= y	Returns true if x is greater than or equal to y
# x != y	Returns true if x is not equal to y
# x ~ y		Returns true if string x matches the regular expression represented by y
# x !~ y	Returns true if string x does not match the regular expression represented by y

# It returns true if the value of the third field is less than or equal to 500.
awk '$3 <= 500' bank.lst
echo '\n================================ RESTART ================================\n'
# It returns true if the value of the fifth field matches the pattern saving.
awk '$5 ~ /saving/' bank.lst
echo '\n================================ RESTART ================================\n'
# It returns true if the value of the first field does not match the pattern saving.
awk '$1 !~ /saving/' bank.lst
echo '\n================================ RESTART ================================\n'
# Checks for the existence of the pattern current in the fifth field.
awk '$5 == "current" ' bank.lst
echo '\n================================ RESTART ================================\n'
# the inverse output of the preceding example.
awk '$5 != "current" ' bank.lst
echo '\n================================ RESTART ================================\n'
# The records having the balance >10000 will be displayed.
awk '$3 > 10000' bank.lst
echo '\n================================ RESTART ================================\n'

# ~ and !~: Matching Regular Expressions

# The ~ and !~ are the two operators that are used while comparing regular expressions.
# The meaning of ~ is that it matches and that of !~ is that it does not match.

# Shows all the records from the file bank.lst that have the pattern current in the fifth field.
awk '$5 ~/current/' bank.lst
echo '\n================================ RESTART ================================\n'
# Shows all the records from the file bank.lst that do not have the pattern current in the fifth field.
awk '$5 !~ /current/' bank.lst
echo '\n================================ RESTART ================================\n'
# Shows all the records from the file bank.lst in which the fifth field ends with the character t.
awk '$5 ~/t$/' bank.lst
echo '\n================================ RESTART ================================\n'
# shows all the records from the file bank.lst in which the fifth field begins with character s.
awk '$5 ~/^s/' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the lines having the pattern current or Current in them.
awk '/[Cc]urrent/' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints all the records having the pattern saving in the fifth field in the file bank.lst.
awk '$5 ~/saving/' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints all the records having the pattern current or Current in the fifth field in the file bank.lst.
awk '$5 ~/[cC]urrent/' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints all the records having the current pattern in their fifth field.
awk '$5 ~ "current" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having t as the last character in the fifth field.  The $ symbol represents the end of the field.
awk '$5 ~/t$/' bank.lst
echo '\n================================ RESTART ================================\n'
# Replace slashes (//) with double quotes.
awk '$5 ~ "t$" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records not having t as the ending character in the fifth field in the file bank.lst.
awk '$5 !~ "t$" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records that start with the character A in the second field. ^ stands for the beginning of the field.
awk '$2 ~ "^A" ' bank.lst
echo '\n================================ RESTART ================================\n'

# COMPOUND EXPRESSIONS

# Brief description of logical operators
# Symbol	Operator	Description
# &&		And			Results true when all the expressions are true
# ||		Or			Results true when any of the expressions is true
# !			Not			Reverses (negates) the logical expression

# It prints all the records/lines from record number 3 to record number 7, along with their record number.
awk 'NR >= 3 && NR <= 7 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints records from the third till the fifth, with their record number. The , (comma) specifies the range of records.
awk 'NR == 3, NR == 5 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints the records/lines having record number 3 or record number 5, along with their record number.
awk 'NR == 3 || NR ==5 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints all the records/lines having a record number less than 2 or greater than 4, along with their record number.
awk 'NR<2 || NR>4 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints all the records/lines whose record number is less than 3, along with their record number.
awk 'Not NR >= 3 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It counts the number of fields in each line/record of the file text.lst and displays them. NF refers to the number of fields.
awk '{ print NF }' text.lst
echo '\n================================ RESTART ================================\n'
# It prints the last field (word) of each record/line of the file text.lst. $NF refers to the last field.
awk '{ print $NF }' text.lst
echo '\n================================ RESTART ================================\n'
# It displays all records having A as the starting character in the second field, as well as t as the ending character in the fifth field.
# Only records that satisfy both the conditions are displayed because of the and operator (&&).
awk '$2 ~ "^A" && $5 ~ "t$" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having A as the starting character in the second field or t as the ending character in the fifth field.
# The records satisfying either of the conditions are displayed.
awk '$2 ~ "^A" || $5 ~ "t$" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having the pattern saving or current in the fifth field.
awk '$5 ~/saving/ || $5 ~/current/' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having 20 as the starting digit and 09 as the ending digit in the fourth field of the file bank.lst.
awk '$4 ~ /^20.*09$/' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having 20 as the starting digit and 09 as the ending digit in the fourth field of the file bank.lst and N as the starting character in the second field of the same file.
awk '$4 ~/^20.*09$/ && $2 ~/^N/' bank.lst
echo '\n================================ RESTART ================================\n'

# ARITHMETIC OPERATORS

# Brief description of arithmetic operators used in AWK
# Operator 	Description
# *			Multiply
# /			Divide
# %			Mod (returns remainder)
# +			Add
# −			Subtract
# ++		Increments value by 1
# −−		Decrements value by 1
# +=		Adds the value

# This command will print the customer name, balance, date, and interest (5% of balance)
awk '$5 == "saving" {printf "%20s %d %20s %f\n", $2,$3,$4,$3*0.05}' bank.lst
echo '\n================================ RESTART ================================\n'

# BEGIN AND END SECTIONS

## awk '
## BEGIN { actions }
## /pattern/ { actions }
## /pattern/ { actions }
## END { actions }
## ' files

# This example prints the first, second, and third fields of the file bank.lst. 
# At the top, the following header will be displayed along with the line feed: Records in the bank.lst file are.
awk ' BEGIN{
	printf "Records in the bank.lst file are :\n" 
	}
{ print $1, $2, $3 }' bank.lst
echo '\n================================ RESTART ================================\n'

# USER-DEFINED VARIABLES

# variable_name=value
# variable_name is the name of the variable and value is the value assigned to it. 
# A variable_name can consist of only letters, numbers, and underscores and cannot begin with a number.

# The script adds the contents of the third field of the file bank.lst into the variable total. At the end, the total is displayed.
awk -f totalbal.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script displays all the records of the file bank.lst, counts the number of records, and also prints the average balance.
awk -f countrecs.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script adds the third field of the file bank.lst and if the third field is 0, skips to the next record.
# In other words, only the contents of the third field that are non-zero are added into the total variable.
# Besides this, counting is also done for the number of customers with non-zero balance and the average balance is computed.
awk -f addnonzero.awk bank.lst
echo '\n================================ RESTART ================================\n'

# if else STATEMENT

# if (logical expression)
# {
# 	...
# 	...
# }
# else
# {
# 	...
# 	...
# }

# If the logical expression is true, then the statement in if block will execute, otherwise the statements of else block will be executed.

# It prints the interest as 5% of the balance if the balance is more than 10,000, otherwise it prints the interest as 6% of the balance, from the file bank.lst.
awk '{ if($3 > 10000) print "interest =" $3*.05; else print "interest=" $3*.06 }' bank.lst
echo '\n================================ RESTART ================================\n'
# The script calculates the average balance in the saving account of the file bank.lst.
# This is to say that the total balance of all the customers with saving account is computed and the total is divided by the number of customers with saving account.
# If the average balance is more than 100,000, the following message is displayed: Quite Good.
# Otherwise the following message is displayed: below Average.
awk -f avgbalance.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script displays the records of the file bank.lst having a balance >= 15,000 and also having the pattern current in the fifth field.
awk -f currentbal.awk bank.lst
echo '\n================================ RESTART ================================\n'
# This script finds the maximum and minimum balance in the bank.lst file.
awk -f maxminbal.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The following script removes the first four lines from the file bank.lst and stores the rest of the lines in the file passed as the command line argument.
# If we enter the same file name as source file # in the command line argument, it will remove the first four lines from the file source file.
./removefour.awk bkk.lst

# BUILT-IN VARIABLES

# Built-in variables in AWK
# Variable	Description
# FS		Input field separator
# RS		Input record separator
# OFS		Output field separator
# ORS		Output record separator
# NF		Number of non-empty fields in current record
# NR		Number of records read from all files
# FILENAME	Name of the current file
# ARGC		Number of command-line arguments
# ARGV		Command-line argument array
# RLENGTH	Length of string matched by a built-in string function
# RSTART	Start of string matched by a built-in string function

# This statement prints all the records of the file having record number >0.
# Since the record number begins from 1, all the records of the file bank.lst are displayed.
awk 'NR >0' bank.lst
echo '\n================================ RESTART ================================\n'
# This statement prints all the records of the file bank.lst along with their record number (line number).
# The built-in variable, NR, represents the row or record number and $0 represents the complete input line.
awk 'NR >0 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints only the third record, that is, record number 3 will be displayed.
awk 'NR ==3 { print NR,$0 }' bank.lst
echo '\n================================ RESTART ================================\n'

# fs: Field Separator

# It represents the input field separator, that is, it splits an input record into fields on the basis of this separator.
# The FS may be in the form of a single character or a regular expression.
# The default value of the field separator is a single space.

# This example describes input field separator as , (comma), which means that each occurrence of a , in the input record separates two fields.
# FS = ","
# This example describes the input field separator as a tab space, which means that the input record is separated into fields on each occurrence of a tab character.
# FS = "\t"

# OFS: Output Field Separator

# It represents the output field separator, that is, it is an output equivalent of the AWK FS variable.
# It determines the field separator used while displaying fields via the print statement.
# By default, AWK OFS is a single space.

# We set the OFS character to a comma (,) as follows:
# OFS=","
# Then the following print statement displays the fields of the file bank.lst separated by a , (comma):
# print $1, $2, $3 } bank.lst
# Similarly, the following value of the OFS will separate the fields by a tab space when printed:
# OFS="\t"

# It prints the first, second, and third fields of the file bank.lst. The fields will be separated by a tab space.
awk 'BEGIN { OFS = "\t" } { print $1, $2, $3 }' bank.lst
echo '\n================================ RESTART ================================\n'

# CHANGING INPUT FIELD SEPARATOR

# The input field separator, FS, helps in specifying how and where an input line be split into fields.
# The default value for FS is space and tab.
# We can manually set FS to any other character depending on our requirement.
# To change FS, we either specify it through the -F option or in a BEGIN pattern.

# −f is the option in AWK that is used to execute the AWK script stored in the file.
# In this script, we have set FS, that is, input field separator to ‘|’. This means the file on which this script will be applied must have fields separated by a ‘|’.
awk -f dispjustify.awk bnk.lst
echo '\n================================ RESTART ================================\n'
# The script prints the total number of computers, as well as the total number of computers, made after 1998.
awk -f totalcomp.awk comp.lst
echo '\n================================ RESTART ================================\n'

# FUNCTIONS

# Functions are small modules/subroutines, which, once written, can be called as many times as we want, hence avoiding repetition of statements.
# Functions also make a program clear and systematic.

# The script prints the larger value first followed by the smaller value out of the two values (of each line/record) in the given file (using functions).
awk -f largersmaller.awk data.lst
echo '\n================================ RESTART ================================\n'

# String Functions

# Built-in string functions in AWK:
# Function			Description
# length(x)			It returns the length of the argument x. If the argument is not supplied, it finds out the length of the entire line.
# substr(s1,s2,s3)	It returns a portion of the string of length s3, starting from position s2 in the string s1.
# Index(s1,s2)		It returns the position of the string s2 in the string s1. It returns 0 if t is not present.
# Split(s,a)		It splits the string s into an array a and optionally returns the number of fields. The field separator is specified by FS.
# system("cmd")		It runs the Unix command, cmd, and returns its exit status.

# length()

# length [(argument)]
# argument, if supplied, makes the length function return its length.

# It displays the length (the number of characters) of each line/record of the file text.lst.
awk '{ print length }' text.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records where the second field is more than four characters long.
awk 'length ($2) >4' bank.lst
echo '\n================================ RESTART ================================\n'
# The script prints the complete line, as well as the number of characters in each line of the file text.lst.
awk -f linechars.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script counts the number of lines and the words in each line and at the end prints the total number of lines and words in the file.
# In this script, NF, that is, the number of fields (number of words) are added to the variable, w (for every line).
awk -f counttotlw.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script prints the average number of words per line. First, it computes the total number of lines and the total number of words in the file and then prints the average.
awk -f avgwords.awk text.lst
echo '\n================================ RESTART ================================\n'

# index()

# index(main_string, string_to_search)
# main_string is the string in which string_to_search has to be searched for. 
# If the string_to_search is found in the main_string, its index location will be returned, otherwise 0 will be returned.

# This returns the value 2.
# x = index("abcde", "b")

# The script counts the number of customers with current account.
awk -f countcurrent.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script checks if the desired pattern exists in the string fed by the user.
# awk -f checkpattern.awk
# The script prints all the lines from the given file, from the line starting with the word FIRST, till the line that ends with the word, END.
# In this script, the line where the first word is ‘FIRST’ is found, and the variable start is set equal to that line number.
# Then, until and unless the line where the last word is ‘END’ occurs, all the lines in between are printed.
# However, if the line where the first word is ‘FIRST’ does not exist, the value of the variable start is set to 0 and nothing will be displayed.
awk -f beginfirst.awk matter.lst
echo '\n================================ RESTART ================================\n'
# The script prints all the lines from the given file, starting from line number 7 till the line that starts with the word WASHINGTON DC.
awk -f fromline7.awk matter.lst
echo '\n================================ RESTART ================================\n'

# substr()

# substr(stg,s,n)
# The first argument, stg, represents the string to be used for extraction, s represents the starting point of extraction, and n indicates the number of characters to be extracted.

# It extracts the third character of the first field.
# substr($1,3,1)
# It extracts the first four characters of the first field
# substr($1,1,4)
# It extracts three characters from the second position of the first field
# substr($1,2,3)

# It displays all the records having A as the first character in the second field and cur as the first three characters in the fifth field of the file bank.lst.
awk 'substr($2,1,1) == "A" && substr($5,1,3) == "cur" ' bank.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records having 09 as the last two digits in the fourth field of the file bank.lst
awk 'substr($4,9,2) == "09" ' bank.lst
echo '\n================================ RESTART ================================\n'
# The script prints records having the pattern Saving or saving in it.
awk -f dispsaving.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script takes the first name and surname as input and prints them after interchanging the two names.
# awk -f interchange.awk

# split()

# split(stg,array_name,"pattern")
# stg represents the string that we wish to split, where the given pattern (delimiter) occurs in the string.
# The split string is stored in the given array_name.

# It will split field1 into different components wherever space occurs.
# The components are then stored in the array k. This implies that if the $1 field has Manoj Kumar Sharma, then Manoj will be stored in k[1], Kumar will be stored in k[2], and Sharma will be stored in k[3].
# split ($1,k, " ")

# It will split the first field ($1) into parts wherever the delimiter comma (,) appears and stores those parts in the array p (p[1] containing the first part, p[2] containing the second part, and so on).
# After splitting, the array p[2], containing the surname is displayed, followed by a blank space, which is then followed by the array p[1].
# The names are displayed from the file salary.lst after interchanging the first name and the surname.
awk 'split($1, p, ",") { print p[2] " " p[1] }' salary.lst
echo '\n================================ RESTART ================================\n'
# The script prints the salary and then the name of the person, interchanging the first name and surname after removing the , (comma) from the name.
awk -f salintchange.awk salary.lst
echo '\n================================ RESTART ================================\n'

# system()

# The command returns 0 (success) or 1 (failure), which can then be used in the script.
# system("tput clear")
# system("date")

# The script demonstrates execution of the date system command and displays the first and fourth fields of the command output.
date
awk -f demogetline.awk
echo '\n================================ RESTART ================================\n'
# When there are multiple lines of output from the system command, they must be read with a loop, as shown in the script.
date
who
awk -f demogetline2.awk
echo '\n================================ RESTART ================================\n'

# Arithmetic Functions

# Brief description of commonly used arithmetic functions in AWK
# Function	Description
# Int		It truncates floating-point value to integer.
# rand()	It returns a random number between 0 and 1.
# Srand(x)	It sets the seed or starting point for random numbers to be generated.
# 			If called without an argument, it uses the time of the day to generate the seed. 
#			If we do not provide or set a seed, the rand() function will return the same values every time it is run.
# cos(x)	It returns the cosine of x.
# exp(x)	It returns the exponent.
# log(x)	It returns the natural logarithm (base e) of x.
# sin(x)	It returns the sine of x.
# sqrt(x)	It returns the square root of x.

awk -f arithmetic.awk
echo '\n================================ RESTART ================================\n'
# It prints the square root of the balance of the file bank.lst.
awk '{ print sqrt($3) }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints 1 (because sin π/2 = 1) 10 times because there are 10 records/lines in the file bank.lst.
awk '{ print sin(3.1414/2) }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints only the records with a balance (third field) less than 10,000 in the file bank.lst.
awk '{ if($3 <10000) print }' bank.lst
echo '\n================================ RESTART ================================\n'
# It prints a message, good, if the balance is greater than 10,000 and otherwise prints bad (only the message, good or bad, will be displayed with no records).
awk '{ if ($3 > 10000) print "good"; else print "bad" }' bank.lst
echo '\n================================ RESTART ================================\n'
# This displays all the records having A as the starting character and 7 as the ending character in the file bnk.lst.
awk '$0 ~/^A.*7$/' bnk.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records starting from any character in the range A to W in the file bnk.lst.
awk '$0 ~/^[A-W]/' bnk.lst
echo '\n================================ RESTART ================================\n'
# It displays all the records not starting from any character in the range A to W in the file bnk.lst.
awk '$0 !~/^[A-W]/' bnk.lst
echo '\n================================ RESTART ================================\n'

# LOOPS

# for Loop

# for(variable=initial value; final condition; increment/decrement)
# {
# ...
# ...
# ...
# }
# A variable will be assigned an initial value. 
# Until the variable reaches the final condition, the body of the loop is executed, and the value of the variable increases/decreases with every execution.

# It displays each record of the file bank.lst two times.
awk '{ for (k=1;k<=2;k++) printf "%s\n", $0 }' bank.lst
echo '\n================================ RESTART ================================\n'
# This command can also be written in two or more lines
awk '{
for (k=1;k<=2;k++)
printf "%s\n", $0
}' bank.lst
echo '\n================================ RESTART ================================\n'
# The script prints the total of all the columns of each record.
awk -f totalcols.awk data.dat
echo '\n================================ RESTART ================================\n'
# The script prints the record of each school student and also prints the total marks.
awk -f totalmarks.awk school.lst
echo '\n================================ RESTART ================================\n'
# The script prints the roll number, name, and the average marks acquired by each student.
awk -f avgmarks.awk school.lst
echo '\n================================ RESTART ================================\n'
# The script prints all the lines after the blank line.
awk -f followblank.awk txt.lst
echo '\n================================ RESTART ================================\n'
# The script prints the lines before the blank line.
awk -f beforeblank.awk txt.lst
echo '\n================================ RESTART ================================\n'
# The script counts the number of blank lines in a file.
awk -f countblank.awk txt.lst
echo '\n================================ RESTART ================================\n'
# The script inserts the two lines in between the file.
awk -f inserttwo.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script prints the matter from the file 10 characters at a time.
awk -f tenchar.awk text.lst
echo '\n================================ RESTART ================================\n'

# do while Loop

# do
# {
# ...
# ...
# ...
# ...
# }while(logical expression)
# The logical expression is checked at the end of the loop, so the loop will execute at least once, even if the logical expression is false.

# The script prints the roll number, name, and average marks acquired by each student (IInd method).
awk -f avgmarks2.awk school.lst
echo '\n================================ RESTART ================================\n'

# while Loop

# The logical expression is validated only in the beginning, so the loop will not execute at all if the logical expression is false.
# while (logical expression)
# {
# ...
# ...
# ...
# ...
# }

# The script prints the roll number, name, and average marks acquired by each student (IIIrd method).
awk -f avgmarks3.awk school.lst
echo '\n================================ RESTART ================================\n'

# GETTING INPUT FROM USER

# getline Command: Reading Input

# The getline command is used for reading a line (record). Data can be fed using the keyboard or from the file.
# getline variable < file
# If we write /dev/tty instead of file, then the data will be read from the terminal (keyboard)

# The script displays the records of the customers having an account number greater than the value entered by the user.
awk -f desiredact.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script displays the records of the customers having an account number and balance greater than the values entered by the user.
awk -f actbal.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script prints the first and last fields of the record of the file address.lst
awk -f lastfield.awk address.lst
echo '\n================================ RESTART ================================\n'

# SEARCH AND SUBSTITUTE FUNCTIONS

# Brief description of commonly used search and substitute functions in AWK
# Function					Description
# Delete array [element]	This deletes the specified element of the array.
# Sub(r, s [,t])			This substitutes the first occurrence of the regular expression r by s in the string t. If the string t is not supplied, $0 (entire line/record) is considered. 
#							The function returns 1 if successful and 0 otherwise.
# Gsub(r,s)					This substitutes s in place of r globally in $0 (entire line/record) and returns the number of substitution made.
# Gsub(r,s,t)				This substitutes s in place of r globally in the string t and returns the number of substitutions made.
# match(s,r)				This searches the string s for a substring r.
#							The index of r is returned or zero is returned.
# Toupper(str)				This converts the given string into upper case.
# Tolower(str)				This converts the given string into lower case.

# sub()

# Substitution function replaces a pattern with another pattern in a given string.
# sub (pattern to be replaced, new pattern, string in which pattern is to be replaced)

# The function replaces the pattern to be replaced with the new pattern in the string, String in which pattern is to be replaced.
# If the string in which pattern is to be replaced is not supplied, $0, that is, the entire line is considered.
# This function returns 1 (true) if the substitution is successful and 0 (false) if the target string could not be found and the substitution could not be made.

# The script replaces the word Tea with the word Brooke Bond in a given file and displays those lines where the replacement is performed.
awk -f replacewrd.awk shp.lst
echo '\n================================ RESTART ================================\n'
# The script replaces a string with another string of a particular record/line only.
awk -f replacestr.awk shp.lst
echo '\n================================ RESTART ================================\n'

# gsub()

# The global substitution function changes all occurrences of a value by another value.
# The format for the global substitution function is identical to sub.
# The only difference is that it replaces all occurrences of the matching text.

# There are two syntaxes for using the gsub() command.
# gsub(r,s)
# r is the expression or pattern that is substituted by s globally in $0 (entire line/record).
# The function returns the number of substitutions made.
# gsub(r,s,t)
# r is the expression or pattern that is substituted by s globally in the string t.
# The function returns the number of substitutions made.

# The script replaces the string Tea with Brooke Bond in the whole file.
awk -f repstrglob.awk shp.lst
echo '\n================================ RESTART ================================\n'

# match()

# The match string function returns the starting position of the matching expression in the line.
# If there is no matching string, it returns 0. In addition, it sets two system variables—RSTART to the starting position and RLENGTH to the length of the matching text string.

# position = match (string in which to search, pattern to search)

# This example prints lines that start with any character but end with a , (comma).
# {if (match($0, /^.*,/) > 0)
# print NR, substr ($0 , RSTART, RLENGTH)
# }

# The script counts the number of customers with current or Current accounts.
awk -f countcurrent2.awk bank1.lst
echo '\n================================ RESTART ================================\n'

# toupper()

# The toupper() function converts lower-case characters in a string into upper case.
# Characters that are not in lower case are left unchanged.

# toupper(str)
# str represents the string that will be converted into upper case.

# tolower()

# The tolower() function converts upper-case characters into lower case without disturbing characters that are not in upper case.

# tolower(str)
# str represents the string that will be converted into lower case.

# The script replaces all the occurrences of the pattern tea or Tea with its upper case format, that is, TEA, in the given file.
awk -f repupper.awk shp.lst
echo '\n================================ RESTART ================================\n'
# The script displays all the lines from the given file starting with the specified character.
# awk -f linesfromchar.awk letter.lst
# The script searches for a word in any case (lower case or upper case) in the file and displays the matching lines.
# awk -f searchword.awk matter.lst
# The script changes the case of the words in the file.
# The words starting with lower case are converted to upper case and the words starting with upper case characters are converted to lower case.
awk -f changecase.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script changes the case of the words in the file into lower case.
awk -f intolower.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script changes the case of the words in the file into upper case.
awk -f convupper.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script toggles the case of each character in the file, that is, the characters in lower case are converted into upper case and characters in upper case are converted into lower case.
awk -f togglecase.awk text.lst
echo '\n================================ RESTART ================================\n'
# The script adds the given number of columns from the given file. The number of columns to be added is passed as a command line argument.
./addcols.awk 2
echo '\n================================ RESTART ================================\n'
./addcols.awk 3
echo '\n================================ RESTART ================================\n'
# The script displays the countries of the Asian continent that have a population of more than 500 million.
awk -f popasia.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The script prints the first five records of the file cont.lst.
awk -f firstfive.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The script prints each record preceded by its record number and a colon, with no extra blanks from the file cont.lst.
awk -f recnumcolon.awk cont.lst
# The following script prints those records whose country name begins with the letters S through Z from the file cont.lst.
awk -f countrysz.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The script is used to display all the records of the file cont.lst and at the end print the total area and total population.
awk -f totareapop.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The script prints the contents of the file countries abbreviating the country names to their first three characters from the file cont.lst.
awk -f abbrthree.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The script displays the total area and population in each of the continents from the file cont.lst.
# Continent name is the first column, total population is the second column, and the total area is the third column.
awk -f popareacont.awk cont.lst
echo '\n================================ RESTART ================================\n'
# The example demonstrates the usage of fi eld separators (FS and OFS) and number of fields (NF).
awk -f reversefile.awk text.lst
echo '\n================================ RESTART ================================\n'

# COPYING RESULTS INTO ANOTHER FILE

# The script will copy all the lines (records) of the file bank.lst and store them in another file bkw.lst.
awk -f copylines.awk
cat bkw.lst
echo '\n================================ RESTART ================================\n'
# The script will copy all the lines (records) of one file and store them in another file. The filenames will be passed as command line arguments.
./copylines2.awk bank.lst bb.lst
cat bb.lst
echo '\n================================ RESTART ================================\n'
# The following script will copy all the records having the specified pattern from a given file into another file. The filename is passed as a command line argument.
./copypattern.awk bnkcur.lst
cat bnkcur.lst
echo '\n================================ RESTART ================================\n'

# DELETING CONTENT FROM FILES

# The script deletes the lines from a given file that does not have the specified pattern.
# ./delnotpattern.awk bank.lst
# The script removes lines with the specified pattern in the file.
# ./removepattern.awk bank.lst

# ARRAYS

# As the name suggests, the term array refers to a sequential set of allocated memory.
# In other words, when a set of sequential memory is assigned to a variable, it is commonly known as array.
# The content to the allocated memory is assigned as well as referenced via indices.
# The index value begins from 1 (instead of 0 as in traditional programming languages).

# The example assigns the value 10 to the index 4 of the array p:
# p[4]=10
# The examples access the value stored in the index 4 of the array p:
# print p[4]
# p[4]=[4]-2

# The script prints all the records of the file bank.lst in reverse order.
awk -f reverserec.awk bank.lst
echo '\n================================ RESTART ================================\n'
# The script prints the average quantity and average sales price, that is, the quantities and prices of sold items are added and then divided by the number of records added.
awk -f avgqtysp.awk shop.lst
echo '\n================================ RESTART ================================\n'

# ASSOCIATIVE ARRAYS

# Associative arrays are those arrays in which we can use any string as an index of the array instead of using the traditional indices, 1, 2,…, etc.
# Besides strings, we can use any expression at the place of the index in an associative array.

# The strings tea and anil are the indices or keys of the associative arrays k and p respectively.
# The numbers 50 and 10 are the values of the respective keys of the associative arrays.
# k[tea]=50;
# p[anil]=10;

# The script counts the frequency of every word in the file letter.lst.
awk -f countfreq.awk letter.lst
echo '\n================================ RESTART ================================\n'
# The script displays the total quantity of each item sold and in the end it also displays the grand total.
awk -f soldqty.awk shp.lst
echo '\n================================ RESTART ================================\n'
# The script displays the total quantity of items sold by each salesman and, in the end, displays the grand total of sold quantities.
awk -f soldsales.awk sales.lst
echo '\n================================ RESTART ================================\n'
# The script demonstrates how an item can be deleted from an array. 
# First the total quantity of each item is computed and stored in an array, and then an element is deleted from an array.
awk -f delarray.awk shp.lst
echo '\n================================ RESTART ================================\n'
# The script prints all the words that are four characters long and which have occurred five or more times.
awk -f wordsoccur.awk mat.lst
echo '\n================================ RESTART ================================\n'
# The AWK script that merges the content of two files, bank.lst and shp.lst, horizontally is as follows.
awk -f mergefiles.awk
