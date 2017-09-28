#!/bin/csh

set studentnames = (ajay manish omy bharat gunjan)
echo Number of student names are $#studentnames
echo The first name is $studentnames[1]
echo The second name is $studentnames[2]
echo The last name is $studentnames[$#studentnames]

