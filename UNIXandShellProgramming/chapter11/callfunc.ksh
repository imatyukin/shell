#!/bin/ksh

function disp {
	echo "Hello World!"
}
i=1
while ((i<=3))
do
	disp
	let i=i+1
done
