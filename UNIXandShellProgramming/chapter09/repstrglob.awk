{
	gsub (/Tea/,"Brooke Bond",$0)
}
{
	if(index($0,"Brooke Bond"))
		print NR,$0
}