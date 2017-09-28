#!/bin/bash

#demonstrating getopts command
while getopts a:b: k
do
	case $k in
		a) echo You have entered a option, the argument with a is $OPTARG ;;
		b) echo You have entered b option, the argument with b is $OPTARG ;;
	esac
done
shift `expr $OPTIND - 1`
echo The command line argument sent is $1
