BEGIN{
	FS="\t"
	print "Continent\tTotal Pop\tTotal Area"
}
{
	totp[$4]+=$3
	tota[$4]+=$2
}
END{
	for(i in totp)
	{
		printf "%-15s %d\t\t%d\n",i,totp[i],tota[i]
	}
}