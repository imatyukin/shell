/* read(): Reading from Files
 *
 * man 2 read
 *
 * ssize_t read(int fd, void *buf, int size);
 *
 * open() flag values:
 * O_RDONLY Opens the file for reading only
 *
 * *buf is a pointer pointing to the memory location where the data read from the file will be stored
 * the size of the buffer buf is 1024 bytes
 *
 * the actual count of the number of bytes read from the file is assigned to the variable n
*/

#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
	int n = 0;
	int fp = open("xyz.txt", O_RDONLY);
	void *buf = (char *) malloc(1024);
	n = read(fp, buf, 1024);
	printf("n = %d\n", n);
}

