/* opendir(), readdir(), telldir(), seekdir(), rewinddir(), and closedir() */

#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	DIR *mydir;
	struct dirent *files;
	if (argc == 2)
	{
		mydir = opendir(argv[1]);
		if (mydir)
		{
			files = readdir(mydir);
			printf("The current position in the directory stream is %ld\n", telldir(mydir));
			seekdir(mydir,0);
			printf("The current position in the directory stream is %ld\n", telldir(mydir));
			files = readdir(mydir);
			printf("The current position in the directory stream is %ld\n", telldir(mydir));
			rewinddir(mydir);
			printf("The current position in the directory stream is %ld\n", telldir(mydir));
			closedir(mydir);
		}
		else
		perror("Error in opening directory");
	}
	else
		perror("Insufficient number of arguments.");
}
