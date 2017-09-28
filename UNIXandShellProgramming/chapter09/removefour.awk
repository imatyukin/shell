awk 'NR >4{
	print $0 > "'$1'"
}' bank.lst
