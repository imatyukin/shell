#!/bin/csh

while ($#argv)
	if (-f $argv[1])
		wc -l $argv[1]
	else
		echo "$argv[1] is not a regular file"
	endif
	shift
end
