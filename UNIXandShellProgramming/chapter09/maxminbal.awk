{
	if (NR==1)
	{
		min=$3
	}
	if (max < $3)
	{
		max=$3
	}
	if (min > $3)
	{
		min=$3
	}
}
END{
	print "Maximum balance is ", max
	print "Minimum balance is ", min
}