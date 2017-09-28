#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <sys/stat.h>

int main(int argc, char *argv[])
{
	int fd1, fd2;
	char c;
	long int i=0, totalbytes=0;
	fd1=open(argv[1], O_RDONLY);
	fd2=open(argv[2], O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);
	while(read(fd1, &c, 1)>0)
		totalbytes++;
	while(++i <= totalbytes){
		lseek(fd1, -i, SEEK_END);
		read(fd1, &c, 1);
		write(fd2, &c, 1);
	}
	close(fd1);
	close(fd2);
}
