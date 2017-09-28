awk 'BEGIN{
	OFS="\t"
	print "Total of",'$1', "columns"
}
{
	tot=0;
	for(i=1;i<='$1';i++)
		tot +=$i
	gtot=gtot+tot
	print $0,tot
}
END{
	print "Grand Total",gtot
}' data.dat