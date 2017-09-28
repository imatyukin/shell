#!/bin/csh

if ( -e $argv[1] && -e $argv[2]) then
	rm $argv[1] $argv[2]
endif
