#!/bin/csh

if ( ! -e $argv[1] ) then
	echo The source file, $1 file does not exists
else
	if ( -e $argv[2] ) then
		echo A file by name $2 already exists
	else
		cp $argv[1] $argv[2]
	endif
endif
