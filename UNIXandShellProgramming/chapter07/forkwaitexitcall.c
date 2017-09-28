/* fork(), wait(), and exit() */

#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
	pid_t p;
	int status;
	p = fork();
	if (p == 0)
	{
		printf("This is a Child process\n");
		exit(0);
	}
	else if(p > 0)
	{
		printf("This is a Parent process\n");
		wait(&status); /* Makes the parent process to sleep until child process finishes its job. The status of the child process i.e. how it terminated is returned through status variable */
		printf("Parent is waiting for the child to finish");
		if (WIFEXITED(status))
			printf("\nChild process terminated normally %d\n", WEXITSTATUS(status)); /* WIFEXITED() is a macro that returns true if the process terminates normally */
	}
	else if(p == -1)
	{
		printf("Fork was unsuccessful, process could not be created:\n");
	}
}
