{
	totw +=NF
	l++
	print $0
}
END{
	print "Total number of words in ",FILENAME, "are", totw
	print "Total number of lines are ",l
	printf "Average number of words per line is %d\n", totw/l
}