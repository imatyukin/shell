#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
	int fd;
	fd = open("lockfile.txt", O_RDWR | O_CREAT | O_EXCL, 0744);
	if (fd == -1) {
		printf("File is already locked\n");
	}
	else {
		printf("Process %d has created the lock file and is using it \n", getpid());
		/* Here the code that the process needs to execute exclusively can be written */
		close(fd);
		unlink("lockfile.txt");
	}
}
