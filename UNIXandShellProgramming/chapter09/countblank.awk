# Counting the number of blank lines
$0 ~/^$/ {n=n+1}
END{
print "The number of blank lines are ",n
}