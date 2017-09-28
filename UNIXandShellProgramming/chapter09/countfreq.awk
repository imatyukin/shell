{k[$0]++}
END{
	for(i in k)
		print(i,"\t", k[i])
}