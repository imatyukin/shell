#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

void inthandler(int sig_no);
void alarmhandler(int sig_no);

int main()
{
	signal(SIGINT, inthandler);
	signal(SIGALRM, alarmhandler);
	printf("Alarm set to go off in 10 seconds \n");
	alarm(10); /* alarm set to go off in 10 seconds */
	printf("The process paused for a while \n");
	pause();
	printf("The process is going to sleep for 20 seconds \n");
	sleep(20);
	abort();
}

void inthandler(int sig_no)
{
	signal(SIGINT, inthandler); /* reset signal */
	printf("The interrupt signal handled by the process\n");
}

void alarmhandler(int sig_no)
{
	signal(SIGALRM, alarmhandler); /* reset signal */
	printf("The alarm signal handled by the process\n");
}
