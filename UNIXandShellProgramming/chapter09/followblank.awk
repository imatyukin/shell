n == 1 {print $0;n = 0}
$0 ~/^$/ {n=1}
# If the line is blank (i.e. start and end ^- start, $-end are same), above line will set the value # of n=1. So, this script prints all the lines following the blank line