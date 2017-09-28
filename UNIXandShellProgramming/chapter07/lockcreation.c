#include <fcntl.h>
#include <errno.h>
#include <stdio.h>

int main()
{
	int fd;
	fd = open("lockfile.txt", O_RDWR | O_CREAT | O_EXCL, 0744);
	if (fd == -1) {
		printf("File could not be opened. Error number = %d\n", errno);
	}
	else {
		printf("File opened successfully");
	}
}
