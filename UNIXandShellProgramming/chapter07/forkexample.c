/* fork(): Creating New Processes
 * vfork(): Creating new processes suspending parent processes
 *
 * man 2 fork; man 2 vfork
 *
 * #include <sys/types.h>
 * #include <unistd.h>
 * pid_t fork(void);
 *
 * #include <sys/types.h>
 * #include <unistd.h>
 * pid_t vfork(void);
 *
 * The execution of the fork() system call results in the following conditions:
 * 1. If successful, the fork() system call returns the process ID of the newly created child process to the parent and 0 to the newly created child process.
 * 2. If unsuccessful, the fork() system call returns a negative value.
 *
*/

#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>

int main()
{
	pid_t p;
	p = fork();
	if (p == 0)
	{
		printf("This is a Child process\n");
	}
	else if(p > 0)
	{
		printf("This is a Parent process\n");
	}
	else if(p == -1)
	{
		printf("Fork was unsuccessful, process could not be created:\n");
	}
}

/* The following statement creates a child process and suspends the parent process
if the vfork() call is successful.

pid_t p;
p = vfork( );

*/
