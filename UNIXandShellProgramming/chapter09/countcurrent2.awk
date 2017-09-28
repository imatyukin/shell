# Counting the number of customers with current or Current account
{
	match($0, /[Cc]urrent/)
	if (RSTART>0)
	{
		c++
	}
}
END{
	print "The number of customers with current account is ", c
}