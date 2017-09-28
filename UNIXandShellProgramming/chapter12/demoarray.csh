#! /bin/csh

set studentnames = (ajay manish omy bharat gunjan)
echo "The list of student names is $studentnames "
echo "The list of student names is shown below:"
foreach name($studentnames)
	echo "$name"
end
