{
	for(i=1;i<=NF;i++)
	{
		n=length($i)
		for(j=1;j<=n;j++)
		{
			h=substr($i,j,1)
			if( h>="a" && h<="z")
				printf "%c",toupper(h)
			else
				if (h>="A" && h<="Z")
					printf "%c",tolower(h)
				else
					printf "%c",h
		}
		printf " "
	}
	printf "\n"
}