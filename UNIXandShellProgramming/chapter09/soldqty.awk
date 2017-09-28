{sumqty [$2]+=$3}
END{
	for(i in sumqty)
	{
		print i,":",sumqty[i]
		gqty += sumqty[i]
	}
print "Grand Total Of Quantity ",":",gqty
}