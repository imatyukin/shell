#!/bin/csh

printf "Enter two values "
set numbers = "$<"
@ a = `echo "$numbers" | cut -f1 -d " "`
@ b = `echo "$numbers" | cut -f2 -d " "`
@ sum = $a + $b
echo The two numbers are $a and $b and their sum is $sum
