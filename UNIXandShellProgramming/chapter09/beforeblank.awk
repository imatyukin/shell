$0 ~/^$/ && NR !=1 {print k}
{k=$0}
# This script prints the lines before the blank line. The line is first saved in the variable k