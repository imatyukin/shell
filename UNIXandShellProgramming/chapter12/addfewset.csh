#!/bin/csh

@ s=0
foreach i ( 5 8 6 9 2 )
	@ s +=$i
end
echo "The sum of values is $s"
