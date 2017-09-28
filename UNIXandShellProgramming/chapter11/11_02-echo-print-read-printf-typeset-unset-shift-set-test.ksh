#!/bin/ksh

# echo

# List of escape characters to be used with echo and printf commands
# Escape		Usage							Escape		Usage
# character										character
# \b			Backspace						\t			Tab
# \c 			Print line without newline		\v			Vertical tab
# 				(works in some versions)		\\			Single backslash
# \f			Form-feed						\0n			ASCII character with octal (base-8)
# \n			Newline										value n, where n is 1 to 3 digits
# \r			Carriage return

# This example displays the text message "The files in the directory are".
echo "The files in the directory are"
# This example displays the value in the variable x.
echo $x
# This example displays the message Thanks and Bye on two separate lines.
echo "Thanks\nBye"

echo '\n================================ RESTART ================================\n'

# print

# 1. -n suppress newline.
# 2. -r raw mode ignores the escape sequences.

# The following example prints the text Hello World! on the screen.
# print "Hello World! "
# This example prints the values in the variables x and y.
# print $x $y
# This example prints the text messages Thanks and Bye on the same line.
# print -n "Thanks"
# print "Bye"

# read

# read var1 var2 ...

# printf

# printf "Message format specifiers" argument list

# List of format specifiers to be used in the printf command
# Format specifier	Description
# %c				Prints a character
# %d				Prints a decimal integer
# %i				Prints a decimal integer
# %o				Displays unsigned octal number
# %s				Displays a string
# %u				Displays unsigned decimal value
# %x				Displays unsigned hexadecimal number and a to f in lower case for numbers 10 to 15
# %X				Displays unsigned hexadecimal number and a to f in upper case for numbers 10 to 15
# %f				Displays floating-point number

# %flags width formatspecifier

# List of flags to be used in the printf command
# Flags	Description
# - Left justifies the formatted value within the field space Prefixes positive values with a space and negative values with a minus sign
# + Prefixes every numeric value with a sign, plus sign for positive and minus sign for negative values
# 0 Pads the output with zeros and not spaces, applies only to numeric formats

# The string, Hello, will be displayed right justified in the allowable width of 20 characters.
printf "%20s \n" Hello
# The string, Hello, will be displayed left justified in the allowable width of 20 characters.
printf "%-20s \n" Hello
# The numerals will be displayed along with the sign prefix. The output will be +10 -20.
printf "%+d %+d" 10 -20
# The numeral 10 will be displayed in the allowable width of eight digits padded with 0s on the left side.
printf "%08d " 10

echo '\n================================ RESTART ================================\n'

# typeset

# typeset [+-attributes] [name[=value]]

# List of attributes used in the typeset command
# Attribute	Meaning
# -			Used to set attributes after setting values
# +			Used to unset attributes after setting values
# -A arr	Defines the associative array arr
# -E n		Defines the exponential number n that specifies the significant digits
# -F n		Defines floating-point number n that specifies the number of decimal places
# -I n		Defines the integer of base n
# -l		Converts upper-case characters to lower case
# -r		Marks the variable as read-only
# -u		Converts lower-case characters to upper case

# This command will define the variable x as an integer and assign the value 500 to it.
# typeset -i x=500
# This command will define the variable y as an octal integer and assign the value 15 to it. A valid base is between base 2 and base 36.
# typeset -i8 y=15
# If we want the variable to always contain a hexadecimal number, then the following command is used.
# typeset -i16 hexvalue
# In order to quickly convert any base number (base 2 through base 36) to base 10, the following syntax is used:
# echo $((base#number))
# The following command converts the base-16 number, ae09f, to its base-10 equivalent.
# echo $((16#ae09f))
# 16652452
# Using both these techniques, we can convert bases of any number.
# The following command converts base 10 to base 16.
# typeset -i16 hexvalue
# hexvalue=2091
# echo $hexvalue
# 16#3487
# The following command converts base 8, octal, to base 16, hexadecimal.
# typeset -i16 hexvalue
# hexvalue=8#2075
# echo $hexvalue
# 16#3487

# Converting Base 10 to Octal
printf %o 6541
printf %x 6541

# typeset -x # list of exported variables
# typeset -fx # list of exported functions
# typeset -r radius=10 # defines a read only variable
# typeset -i2 x # declares x as binary integer
# typeset -i8 y # declares y as octal integer

# unset

# unset [-fv] name(s)

# $ unset x
# $ unset factorial
# The following script demonstrates the setting and unsetting of variables.
# export radius=10
# echo $radius
# unset $radius
# echo $radius

echo '\n================================ RESTART ================================\n'

# VARIABLE SUBSTITUTION

# List of formats of variable substitution
# Format			Description
# ${ var }			Uses the value of var
# ${ var1 :- var2 }	Uses var1 if set, otherwise uses var2
# ${ var1 := var2 }	Uses var1 if set otherwise uses var2 and assigns its value to var1
# ${ var1 :? var2 }	Uses var1 if set, otherwise prints var2 and exits, and if var2 is not supplied, it prints the message ‘parameter null or not set’
# ${ var1 :+ var2 }	Uses var2 if var1 is set, otherwise uses no variable

p=Hello
q=World
r=

echo ${p}World!
echo ${p-$q}
echo ${r-`date`}
echo ${r="Great"}
echo ${r:="Work"}
echo ${r?Work}

echo '\n================================ RESTART ================================\n'

# COMMAND LINE ARGUMENTS

# List of positional parameters
# Variable	Description
# $0		It represents the name of the command or script being executed.
# $n		It represents the positional parameter passed to the script, where n is a number between 1 and 9 indicating
#			the position of the argument from the script. For instance, $1 represents the first argument that follows the
#			command script and $2 represents the second argument from the command script. The arguments exceeding
#			the 9th position need to be enclosed in curly braces. For example, the 10th argument has to be used as ${10}.
# $#		It represents the count of the number of positional parameters passed to the script.
# $*		It represents a list of all command line arguments.
# $@		It represents an individually double-quoted list of all command line arguments.
# $!		It represents the PID (process ID) number of the last background command.
# $$		It represents the PID (process ID) number of the current process.
# $?		It represents a numerical value indicating the exit status of the last executed command.

# ${# var} This displays the length of var.
# ${#*} This displays the number of positional parameters.
# ${#@} Like ${#*}, this also displays the number of positional parameters.

# shift: Shifting Positional Parameters

# shift [n]

# set: Handling Positional Parameters

# set [data list][`executable command`]

# test Command

# [[ boolean expression ]]

# The following example tests whether the number of command line arguments is 0.
# [[ $# -eq 0 ]]
# The following example tests whether the length of the string name is zero.
# [[ -z $name ]]
# The following example tests whether the filename specified through variable $file is a file.
# [[ -f $fi le ]]

# PATTERN-MATCHING OPERATORS

# List of pattern matching operators
# Operator				Description
# ${ var # pattern }	Displays the value of var after removing the shortest matching pattern from the left
# ${ var ## pattern }	Same as the pattern #, but removes the longest matching pattern from the left
# ${ var % pattern }	Displays the value of var after removing the pattern from the right
# ${ var %% pattern }	Same as the pattern %, but removes the longest matching pattern


