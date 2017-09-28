#!/bin/csh

echo -n "Enter file name to delete: "
set filename = $<
if (-f $filename) then
	echo -n "Sure want to delete this file yes/no: "
	set ans = $<
	switch ($ans)
		case [yY][eE][sS]:
			rm ${filename}
			echo "The file is deleted"
			breaksw
		case [nN][oO]:
			echo "The file is not deleted"
			breaksw
		default:
			echo "Please enter either yes or no"
			breaksw
	endsw
else
	echo "$filename is not a file"
endif
