#!/bin/csh

onintr close
while (1)
	echo -n "Enter a number: "
	set n = $<
	if ($n % 2 == 0) then
		echo The number, $n is even
	else
		echo The number, $n is odd
	endif
end
close:
echo Script ends