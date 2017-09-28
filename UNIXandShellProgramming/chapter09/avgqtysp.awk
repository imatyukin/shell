BEGIN{
	FS="\t"
	printf "Code	A/c	Name	Qty	Sp\n"
}
/sales/
{
	c=c+1;
	tot[1]+=$4;
	tot[2]+=$5;
}
END{
	printf "Average Quantity is %.3f And Average Selling Price is %.3f \n",tot[1]/c,tot[2]/c
}