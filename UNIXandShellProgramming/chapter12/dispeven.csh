#!/bin/csh

foreach i ( 1 2 3 4 5 6 7 8 9 10 )
	if ( $i % 2 == 1 ) then
		continue
	endif
	echo $i
end
