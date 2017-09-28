#!/bin/csh

@count = 1
while ($count <= 10)
	set $num=`expr $count \* 5`
	echo $num
	set count = `expr $count +1`
end
