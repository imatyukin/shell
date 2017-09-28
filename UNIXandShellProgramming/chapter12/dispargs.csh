#!/bin/csh

if ( $#argv >= 2 ) then
	echo $argv[2]
else if ( $#argv == 1 ) then
	echo $argv[1]
else
	echo No command line argument supplied
endif
