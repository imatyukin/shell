#!/bin/csh

set firstfile=xyz.txt
set secondfile=uvw.txt
cp $firstfile $secondfile
@ length = 8
@ breadth = 5
@ area = $length * $breadth
echo Area of rectangle is $area
unset $area
