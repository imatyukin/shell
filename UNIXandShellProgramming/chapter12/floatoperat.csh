#!/bin/csh

set a = 1234.56
set b = 99.99
set c = `echo $a + $b | bc`
set d = `echo $a \* $b | bc`
echo Sum of floating point numbers is $c
echo Multiplication of floating point numbers is $d
