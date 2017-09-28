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

int main(int argc,char **argv)
{
	if (argc < 2)
	{
		perror("Insufficient arguments ");
		exit(1);
	}
	if (chdir(argv[1]) != 0)
	{
		perror("Cannot change to the specified directory");
		exit(1);
	}
}


