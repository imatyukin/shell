#!/bin/csh

foreach file (`ls`)
	echo $file | tr '[A-Z]' '[a-z]'
end
