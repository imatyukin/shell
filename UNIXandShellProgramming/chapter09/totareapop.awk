BEGIN{
	FS="\t"
	print"COUNTRY""\t\t""AREA""\t""POP""\t""CONTINENT"}
{
	printf "%-15s %d\t%d\t%-20s\n", $1,$2,$3,$4
	tot +=$2
	total +=$3
}
	END{
		print "============================================="
		print "Total" "\t\t" tot "\t" total
		print "============================================="
}