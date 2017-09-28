BEGIN{
	FS="\t"
	OFS="\t"
}
{
	tot=0
	for (i=1;i<=NF;i++)
		tot+=$i
	print $0,tot
}