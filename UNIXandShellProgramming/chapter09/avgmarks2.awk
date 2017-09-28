{
	FS="\t"
	OFS="\t"
	total =0
	count =0
	i = 3
}
NF > 1{
	do
	{
		total +=$i
		count++
		i++
	}while(i <=NF)
	avrg=total/count
	print($1,$2,avrg)
}