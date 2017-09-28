#! /bin/csh

echo "The script name is: ${0}"
echo "Number of arguments are: $#argv"
echo "First argument is $argv[1] and second argument is $argv[2]"
echo "All of the arguments are: $argv[*]"
echo "Second and third arguments are: $argv [2-3]"
echo "All arguments except the first are: $argv[2-$#argv]"

