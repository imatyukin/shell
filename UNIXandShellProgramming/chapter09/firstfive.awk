BEGIN{
	FS="\t"
	OFS="\t"
	print "Country\tArea\tPOP\tContinents"
}
{
	if(NR <=5)
	print $1,$2,$3,$4
}
