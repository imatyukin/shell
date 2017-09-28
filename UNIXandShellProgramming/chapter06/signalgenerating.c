#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

void inthandler(int sig_no);
void quithandler(int sig_no);
void huphandler(int sig_no);

int main()
{
	int pid;
	if ((pid = fork()) < 0) {
		perror("Child process could not be created");
		exit(1);
	}
	if (pid == 0)
	{
		/* Code executed by the child process */
		signal(SIGINT, inthandler);
		signal(SIGQUIT, quithandler);
		signal(SIGHUP, huphandler);
		for(;;); /* infinite loop */
	}
	else
	{
		printf("pid is %d\n",pid);
		/* Code executed by the parent process */
		printf("Sending SIGINT signal \n");
		kill(pid,SIGINT);
		sleep(5);
		printf("Sending SIGQUIT signal \n");
		kill(pid,SIGQUIT);
		sleep(5);
		printf("Sending SIGHUP signal\n");
		kill(pid,SIGHUP);
		sleep(5);
		printf("Sending SIGSTOP signal - terminating program \n");
		kill(pid,SIGSTOP);
	}
}

void inthandler(int sig_no)
{
	signal(SIGINT, inthandler); /* reset signal */
	printf("The interrupt signal handled by the child process\n");
}

void quithandler(int sig_no)
{
	signal(SIGQUIT, quithandler); /* reset signal */
	printf("The quit signal handled by the child process\n");
}

void huphandler(int sig_no)
{
	signal(SIGHUP, huphandler); /* reset signal */
	printf("The hangup signal handled by the child process\n");
}
