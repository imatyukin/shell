#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

void inthandler(int sig_no);
void quithandler(int sig_no);

int main()
{
	signal(SIGINT, inthandler);
	signal(SIGQUIT, quithandler);
	printf("Press Ctrl-c to generate the interrupt signal\n");
	printf("Press Ctrl-\\ to generate the quit signal\n");
	for(;;); /* infinite loop */
}

void inthandler(int sig_no)
{
	signal(SIGINT, inthandler);
	/* resetting signal. Some versions of UNIX reset the signal to the default when called */
	printf("\nCtrl-c keys are pressed\n");
}

void quithandler(int sig_no)
{
	signal(SIGQUIT, quithandler);
	printf("\nCtrl-\\ keys are pressed. Quitting from the program\n");
	exit(0);
}
