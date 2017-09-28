{
	tot = 0
	c = 0
	i = 3
	while(i <= NF)
	{
		tot +=$i
		c++
		i++
	}
	if(c > 0)
	{
		avg = tot/c
		print ($1,$2,avg)
	}
}