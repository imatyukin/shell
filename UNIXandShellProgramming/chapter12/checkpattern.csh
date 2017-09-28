#!/bin/csh

if ( { grep $argv[1] $argv[2] } ) then
	echo The text, $argv[1] found in the file, $argv[2]
else
	echo The text, $argv[1] not found in the file, $argv[2]
endif
