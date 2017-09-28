#!/bin/csh

set studentnames = (ajay manish omy bharat gunjan)
while ( $#studentnames > 0 )
	echo "$studentnames[1]"
	shift studentnames
end
