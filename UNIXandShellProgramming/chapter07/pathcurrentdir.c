/* getcwd(): Determining Current Working Directory
 *
 * man getcwd
 *
 * char *getcwd(char *buf, size_t size);
 *
*/

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
	char buf[71];
	if (chdir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7") != 0)
	{
		perror("Cannot change to the projects directory");
		exit(1);
	}
	if (getcwd(buf, 71) == NULL)
	{
		perror("The path of the working directory exceeds 71 characters");
		exit(1);
	}
	printf("Current working directory is %s\n", buf);
}

