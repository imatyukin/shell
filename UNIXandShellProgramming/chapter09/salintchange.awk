BEGIN{FS="\t"}
{
	split($0,n)
	split(n[1],lnm,",")
	print n[2],lnm[2],lnm[1]
}