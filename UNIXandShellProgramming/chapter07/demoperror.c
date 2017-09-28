/* ERROR HANDLING
 *
 * perror(): Displaying Errors
 *
 * man 3 perror
 *
 * void perror(const char *s);
 *
 * s represents the string that we wish to display along with the associated error message
 *
*/

#include <stdio.h>
#include <errno.h> //required when using perror() function
#include <stdlib.h>

int main (int argc, char *argv[])
{
	FILE *fp;
	fp = fopen(argv[1], "r");
	if(fp==NULL)
	{
		perror(argv[0]); /* Displays demoperror.c: No such file or directory */
		perror(NULL); /* Displays No such file or directory */
		perror("File could not be opened"); /* Displays File could not be opened: No such file or directory */
		printf("errno = %d\n", errno); /* Displays errno=2 */
		exit(1);
	}
	printf("File exists and is opened for reading ");
	fclose(fp);
}
