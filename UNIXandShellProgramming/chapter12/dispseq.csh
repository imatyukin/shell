#!/bin/csh

@count = 1
while ($count <= 10)
	echo $count
	set count = `expr $count +1`
end
