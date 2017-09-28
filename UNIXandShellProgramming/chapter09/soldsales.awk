BEGIN{
	print "Sales man Name\t Sales made"
}
{sales[$1]+=$2}
END{
	for(i in sales)
	{
		print i,"\t\t",sales[i]
			gtot += sales[i]
	}
	print "Grand Total Of Sales ",gtot
}