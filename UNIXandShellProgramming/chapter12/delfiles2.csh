#!/bin/csh

if ( -e $argv[1] && -e $argv[2]) then
	rm $argv[1] $argv[2]
	echo "Both files, argv[1] and argv[2] are deleted"
else
	echo "Either of the file does not exists, no file will be deleted
endif
