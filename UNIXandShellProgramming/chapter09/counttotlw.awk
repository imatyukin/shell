BEGIN{print "Line No\t Words \t Line"}
{
	print NR,"\t",NF,"\t" $0
	w+=NF
}
END{
	print "\nTotals:"
	print "Words: \t" w
	print "Lines:\t" NR
}