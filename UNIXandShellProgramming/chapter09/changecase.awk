{
	for(i=1;i<=NF;i++)
	{
		h=substr($i,1,1)
		if( h>="a" && h<="z")
			printf "%s", toupper($i)
		else
			if (h>="A" && h<="Z")
			printf "%s", tolower($i)
		else
			printf "%s", $i
	}
	printf "\n"
}