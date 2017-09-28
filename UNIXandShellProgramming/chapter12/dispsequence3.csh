#!/bin/csh

foreach i ( 1 2 3 4 5 6 7 8 9 10 11 12)
	if ( $i == 11 ) then
		break
	endif
	echo $i
end
