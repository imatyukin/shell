/* open(): Opening Files
 *
 * man 2 open
 *
 * int open(filename, flag);
 * int open(filename, flag, mode);
 *
 * open() flag values:
 * O_CREAT Creates the file if it does not exist
 * O_RDWR Opens the file for reading and writing
 *
 * open() mode values:
 * S_IRWXU Read, write, and execute permissions for the owner
 *
 * If the file cannot be opened or created, the system call returns −1
*/

#include <fcntl.h>
#include <stdio.h>

int main()
{
	/* Syntax 1: fp = open("xyz.txt", O_RDONLY);
	 * Syntax 2: */
	int fp = open("xyz.txt", O_CREAT|O_RDWR, S_IRWXU);
	if(fp==-1)
		printf("error");
}
