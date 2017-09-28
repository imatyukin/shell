BEGIN{
	FS="\t"
	print "Country Area POP Continents"
}
{
	print NR,":",$1,$2,$3,$4
}