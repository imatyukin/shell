BEGIN{
	printf "Records are :\n\n"
}
{
	printf"%5d %-20s %d %15s %10s\n",$1,$2,$3,$4,$5
	c++;
	tot+=$3
}
END{
	printf"\n\t The Number Of Records Are %d\n",c
	printf"\n\t The Average Balance Is %.2f\n",tot/c
}