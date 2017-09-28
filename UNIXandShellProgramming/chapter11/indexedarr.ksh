#! /bin/ksh

set -A p 15 9 12 2 6
echo "The array elements are "
x=0
while [ $x -lt ${#p[@]} ]; do
	echo "${p[$x]}"
	let x=x+1
done
