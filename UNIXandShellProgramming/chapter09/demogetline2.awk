BEGIN{
	"date" | getline
	print($1,$4)
	while("who" | getline)
		print($1,$2)
}