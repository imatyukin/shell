# It inserts two lines :
# Hello World !
# Thank you
# after second line in the given file
NR !=3 {print $0}
NR == 3{print "Hello World!"; print "Thank you" ;print $0}