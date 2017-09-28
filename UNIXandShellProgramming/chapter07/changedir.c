/* chdir(): Changing Directories
 *
 * man 2 chdir
 *
 * int chdir(const char *path);
 *
*/

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
	if (chdir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/") != 0)
	{
		perror("Cannot change to the projects directory");
		exit(1);
	}
	else
		printf("Changed to projects directory");
}

