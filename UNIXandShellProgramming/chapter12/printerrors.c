#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>

int main () {
	int i;
	extern const int sys_nerr;
	printf ("Total number of errors are: %d\n", sys_nerr);
	for (i =0; i < sys_nerr; i++)
		printf ("%d: %s\n", i, strerror (i) );
	exit (0);
}
