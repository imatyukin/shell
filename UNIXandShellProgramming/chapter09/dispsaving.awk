BEGIN{OFS="\t"}
{
	n=substr($5,1,1)
	if(n=="S" || n=="s")
	{
		print $0
	}
}