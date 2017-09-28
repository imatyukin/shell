#!/bin/csh

set studentnames = (ajay bharat manish gunjan omy)
while ($argv[1] != $studentnames[1])
	shift studentnames
	if ($#studentnames == 0) then
		echo "$argv[1] is not present in the list of student names"
		exit 1
	endif
end
echo "$argv[1] is present in the list of student names"
