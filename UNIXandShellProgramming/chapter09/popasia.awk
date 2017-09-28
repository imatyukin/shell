BEGIN{
	IFS="\t"
	OFS="\t"
	print "Country\tArea\tPOP\tContinents"
}
{
	if($4 == "Asia" && $3 >= 500)
		print $1,$2,$3,$4
}