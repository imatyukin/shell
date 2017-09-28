#!/bin/csh

foreach arg ($argv)
	if ( $arg =~ -* ) then
		echo $arg Argument is an option
	else
		echo $arg Argument is a filename
	endif
end
