/* fopen(): Opening Files
 *
 * man 3 fopen
 *
 * FILE *fopen(const char *filename, const char *mode);
 *
 * Brief description of the different modes in which a file can be opened:
 * Mode						Description
 * "r" or "rb"				Opens the file for reading only
 * "w" or "wb"				Opens the file for writing and deletes its existing content, if any
 * "a" or "ab"				Opens the file for appending content—adding content to the end of file
 * "r+" or "rb+" or "r+b"	Opens the file for updating—reading and writing
 * "w+" or "wb+" or "w+b"	Opens the file for updating and deleting its existing content
 * "a+" or "ab+" or "a+b"	Opens the file for updating and appending content to the end of file
 *
 * The character b in the aforementioned mode indicates that the file is a binary rather than a text file.
 * The mode parameter is a string and hence must be enclosed in double quotes.
 * The function fopen(), if successful, returns a FILE * pointer pointing to the file, but a value NULL if it fails.
 *
 * FILE *fp;
 * fp=fopen("students.txt","wb");
 *
 *
 * fwrite(): Writing into Files
 *
 * man 3 fwrite
 *
 * size_t fwrite (const void *ptr, size_t size, size_t nitems, FILE *stream);
 *
 * ptr represents the pointer to the structure, an array, int, float, etc., containing the data to be written into the file.
 * The file where we want to write the content is represented by the pointer stream.
 * The argument nitems represents the number of records or structures to be written into the file
 * and size represents the size of a single structure.
 *
 *
 * fgets() and gets(): Reading Strings
 *
 * man 3 fgets; man 3 gets
 *
 * char *fgets(char *s, int n, FILE *stream);
 * char *gets(char *s);
 *
 * stream represents the file stream from which the string has to be fetched or read.
 * The string of size n−1 bytes will be read and assigned to the string represented by the pointer s.
 *
 * The following example reads 80 characters from the file pointed by the file pointer fp and stores it into the string k.
 * fgets(k,80,fp);
 *
 * The following example reads the text from the keyboard and stores it into the string, k.
 * char k[60];
 * gets(k);
 * Since the size of variable k is 60, either the first 59 characters (one byte is left for the terminating NULL byte \0)
 * or until the newline character (whichever appears earlier) is stored in the variable, k.
 *
*/

#include <stdio.h>
#include <string.h>

struct student
{
	int roll,marks;
	char name[20];
};

int main()
{
	FILE *fp;
	struct student stud;
	fp=fopen("students.txt","wb");
	stud.roll=101;
	strcpy(stud.name,"Chirag");
	stud.marks=95;
	fwrite(&stud,sizeof(struct student),1,fp);
}

