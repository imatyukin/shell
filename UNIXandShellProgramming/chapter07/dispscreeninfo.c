/* ioctl(): Controlling Devices
 *
 * man 2 ioctl
 *
 * int ioctl( int fd, int cmd, int arg)
 *
 * The function represented by cmd is applied on the device whose file descriptor fd is provided.
 * arg is optional and represents the arguments for the function cmd.
 * The system calls return a value of −1 if unsuccessful.
*/

/* Displays the screen height and width */

#include <sys/ioctl.h>
#include <stdio.h>
#include <termios.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    struct winsize w;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);
    printf("Screen width is %d and Screen height is %d\n", w.ws_col, w.ws_row);

    return 0;
}

/*
struct winsize {
	unsigned short	ws_row;		# rows, in characters
	unsigned short	ws_col;		# columns, in characters
	unsigned short	ws_xpixel;	# horizontal size, pixels
	unsigned short	ws_ypixel;	# vertical size, pixels
}; */
