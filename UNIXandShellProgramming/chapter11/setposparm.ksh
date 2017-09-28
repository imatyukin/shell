#!/bin/ksh

set a b c
echo "Number of argument are $#"
echo "The command line arguments passed are $*"
echo "The first argument is $1"
echo "The second argument is $2"
set one two
echo "Number of argument are $#"
echo "The command line arguments passed are $*"
echo "The first argument is $1"
echo "The second argument is $2"
set `date`
echo "Number of argument are $#"
echo "The command line arguments passed are $*"
echo "The first argument is $1"
echo "The second argument is $2"
