#!/bin/ksh

echo "Enter a value "
read n
integer -i10 value=$n
echo "Original value is $value"
typeset -i16 value
echo "Value in hexa form is $value"
typeset -i8 value
echo "Value in octal form is $value"
typeset -i2 value
echo "Value in binary form is $value"