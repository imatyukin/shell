#include <fcntl.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	int fd1, fd2;
	char buf[1024];
	long int n;

	if((fd1 = open(argv[1], O_RDONLY)) == -1)
	{
		perror("Source file does not exists ");
		exit(1);
	}
	if((fd2 = open(argv[2], O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU)) == -1)
	{
		perror("Problem in creating the target file ");
		exit(1);
	}
	while((n=read(fd1, buf, 1024)) > 0)
	{
		if(write(fd2, buf, n) != n){
			perror("Error in writing into the target file");
			exit(2);
		}
	}
	close(fd1);
	close(fd2);
}
