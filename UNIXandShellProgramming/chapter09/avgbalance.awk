{
	if ($5 == "saving")
	{
		bal +=$3
		c++
	}
}
END{
		avg=bal/c
		if(avg > 100000)
		print "Average balance in saving accounts is Quite Good",avg
		else
		print "Average balance in saving account is below Average",avg
}
