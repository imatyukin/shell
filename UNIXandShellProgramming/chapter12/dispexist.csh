#!/bin/csh

foreach file ($argv[*])
	if (-e $file) then
		echo $file
	endif
end
