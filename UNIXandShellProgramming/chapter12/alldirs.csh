#!/bin/csh

foreach file ( `ls` )
	if ( ! -f $file ) then
		echo $file
	endif
end
