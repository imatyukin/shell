#!/bin/csh

set studentnames = (Ajay Bharat Omy Manish Gunjan)
@ i = 1
while( $i <= $#studentnames )
	echo "$studentnames[$i]"
	@ i++
end
