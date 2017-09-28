BEGIN{
	FS="\t"
	OFS="\t"
	print "Country\tArea\tPOP\tContinents"
}
{
	h=substr ($1,1,1)
	if ((h>="S" && h<="Z") || (h>="s" && h<="z"))
		print $1,$2,$3,$4
}