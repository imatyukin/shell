/* lseek(): Relocating File Descriptors
 *
 * man 2 lseek
 *
 * long lseek(int fd, long offset, int location)
 *
 * Brief description of the arguments of lseek() call:
 * fd This represents a file descriptor.
 * Offset This represents the number of bytes that we want the file descriptor to move from the position represented by location.
 * location This indicates whether the offset should be located relative to the beginning of the file (SEEK_SET or 0),
 * from the current position of the file descriptor (SEEK_CUR or 1), or from the end of the file (SEEK_END or 2).
 * The attributes, SEEK_SET, SEEK_CUR, and SEEK_END are represented by the constants 0, 1, and 2, respectively.
 * The attribute SEEK_SET sets the file descriptor at the offset bytes from the beginning of the file;
 * the value SEEK_CUR sets the file descriptor at its current location plus the offset bytes;
 * and the value SEEK_END sets the file descriptor at the offset from the end of file.
 *
 * If successful, lseek() returns a long integer that defines the location of the file descriptor measured in bytes from the beginning of the file.
 * If unsuccessful, the position of the file descriptor does not change.
*/

#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

int main()
{
	int fd = open("xyz.txt", O_RDONLY);
	long position;

	/* the file descriptor fd at the 10th byte from the beginning of the file */
	position = lseek(fd, 10, 0);
	if (position == -1)
		perror("lseek to beginning failed");
	else
		printf("position = %ld\n", position);
	/* the file descriptor fd at the last byte of the file */
	position = lseek(fd, 0, 2);
	if (position == -1)
		perror("lseek to end failed");
	else
		printf("position = %ld\n", position);
	/* the file descriptor fd at the 5th byte from the end of the file */
	position = lseek(fd, -5, 2);
	if (position == -1)
		perror("lseek to the 5th byte from the end failed");
	else
		printf("position = %ld\n", position);
	close(fd);
}
