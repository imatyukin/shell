{
	match($0,/[Tt]ea/)
	t=toupper(substr($0,RSTART,RLENGTH))
	gsub(/[Tt]ea/,t)
	print $0
}