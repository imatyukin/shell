{
	t = sub(/Tea/,"Brooke Bond",$0)
}
{
	if(t > 0)
		print NR,$0
}