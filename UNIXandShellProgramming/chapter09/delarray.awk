BEGIN{OFS = "\t"}
{sumqty[$2]+=$3}
END{
	print "Deleting sugar index entry"
	delete sumqty["Sugar"]
		for(i in sumqty)
		{
			print i,":",sumqty[i]
			gqty +=sumqty[i]
		}
	print "Grand total of quantity",":",gqty
}