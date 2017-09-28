{
	total=0
	count=0
	for (i=3;i<=NF;i++)
	{
		total +=$i
		count++
	}
	if (count > 0){
		avrg=total/count
		print ($1,$2,avrg)
	}
}