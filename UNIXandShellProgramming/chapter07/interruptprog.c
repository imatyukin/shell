/* INTERRUPTED SYSTEM CALL */

#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

void sig_handler (int signo)
{
	if (signo == SIGINT)
		printf("SIGINT has occurred\n");
	if (signo == SIGQUIT)
		printf("SIGQUIT has occurred. Restarting the read call\n");
}

int main() {
	struct sigaction sa;
	char buf;
	int n;

	sa.sa_handler = sig_handler;
	sigemptyset(&sa.sa_mask);
	sa.sa_flags = 0;
	if (sigaction(SIGINT, &sa, NULL)) exit(1);
	sa.sa_flags = SA_RESTART;
	if (sigaction(SIGQUIT, &sa, NULL)) exit(1);
	n = read(0, &buf, 1);
	if(n < 0) {
		if(errno == EINTR) perror("read");
	}
	else
		printf("%c", buf);
	return 0;
}
