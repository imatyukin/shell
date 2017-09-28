/* close(): Closing Files
 *
 * man 2 close
 *
 * int close(int fd);
 *
 * if successful, the call returns the value 0 and otherwise returns the value −1
 *
*/

#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

int main()
{
	int fd = open("xyz.txt", O_RDONLY);
	if(fd == -1) {
		printf("error open file\n");
	}
	close(fd);
	if(fd == -1) {
		printf("error close file\n");
	}
	else {
		printf("file close\n");
	}
}
