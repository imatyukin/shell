/* Competing Locks */

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main()
{
	int fd, flag;
	struct flock region;
	fd = open("lockfile.txt", O_RDWR | O_CREAT, 0744);
	if (!fd) {
		fprintf(stderr, "Unable to open lock file for read/write\n");
		exit(1);
	}
	region.l_type = F_RDLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 5;
	region.l_len = 10;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
	region.l_type = F_RDLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 5;
	region.l_len = 5;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
	region.l_type = F_WRLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 20;
	region.l_len = 10;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
	region.l_type = F_RDLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 20;
	region.l_len = 5;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
	region.l_type = F_UNLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 20;
	region.l_len = 10;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be unlocked\n");
	} else {
		printf("Region successfully unlocked\n");
	}
	region.l_type = F_RDLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 20;
	region.l_len = 5;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
	close(fd);
}
