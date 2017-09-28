BEGIN{
	FS="\t"
}
{
	print $0
	totno +=$3
	if ($2 >1998)
		tot +=$3
}
END{
	print "Total number of computers ", totno
	print "Total number of computers made after 1998 are ", tot
}