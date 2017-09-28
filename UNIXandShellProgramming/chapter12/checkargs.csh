#!/bin/csh

if ( $#argv == 0 ) then
	echo No file name passed as command line argument
else if ( -e $argv[1] && -e $argv[2]) then
	rm $argv[1] $argv[2]
endif
