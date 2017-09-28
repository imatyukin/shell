/* mkdir() and rmdir(): Creating and Removing Directories
 *
 * man 2 mkdir; man 2 rmdir
 *
 * int mkdir(const char *path, mode_t mode);
 * int rmdir(const char *path);
 *
 * If successful, the mkdir() system call returns 0; else it returns −1 if not successful.
 * If successful, the rmdir() system call returns 0; if not successful, it returns −1.
*/

#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
	/* mkdir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7/experiments", 0744); */
	if (mkdir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7/experiments", S_IRWXU | S_IRGRP | S_IROTH) == -1)
	{
		perror("Error in creating directory");
		exit(-1);
	}
	else
		printf("Directory successfully created\n");

	if (rmdir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7/experiments") == -1)
	{
		/* Error in removing projects directory */
		perror("Cannot remove the /usr/projects directory");
		exit(-1);
	}
	else
		printf("The /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7/experiments directory successfully removed\n");
}

