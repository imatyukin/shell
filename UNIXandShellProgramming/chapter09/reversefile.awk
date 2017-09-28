BEGIN{
	FS=" "
	OFS=" "
}
{
	for(i=NF;i>=1;i--)
	{
		printf "%s ",$i
	}
	printf"\n"
}