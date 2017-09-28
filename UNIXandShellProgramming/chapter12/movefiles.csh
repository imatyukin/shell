#!/bin/csh

echo -n "Enter a file name "
set filename = $<
if (-e $filename) then
	if (! -d ~/projects) then
		mkdir ~/projects
	endif
	mv $filename ~/projects
else
	echo The file $filename does not exist
	exit
endif
