#! /bin/csh

foreach file (`ls`)
	if ( -f $file ) then
		echo -n "Delete the file ${file} (y/n)?"
	else
		echo -n "Delete this directory ${file} (y/n)? "
	endif
	set ans = $<
	switch ($ans)
		case n:
			breaksw
		case y:
			rm -r $file
			breaksw
	endsw
end
