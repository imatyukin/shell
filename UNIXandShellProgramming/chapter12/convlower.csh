#!/bin/csh

foreach file (`ls`)
	set newfile = `echo $file | tr '[A-Z]' '[a-z]'`
	if ($newfile == $file) then
		continue
	endif
	mv $file $newfile
end
