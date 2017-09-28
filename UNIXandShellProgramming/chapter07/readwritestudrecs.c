/* fopen(), fread(), fwrite(), fseek(), and fclose()
 *
 *
 * fread(): Reading Data from Files
 *
 * man 3 fread
 *
 * size_t fread(void *ptr, size_t size, size_t nitems, FILE *stream);
 *
 * Data is read into the specified data buffer represented by the pointer ptr from the file represented by stream.
 * The size of the buffer is specified as size and the number of items successfully read into the data buffer is represented by nitems.
 *
 * Example The following example reads a student’s record from the file students.txt and fills the information in the structure stud.
 * struct student
 * {
 *   int roll,marks;
 *   char name[20];
 *   };
 *   void main()
 *   {
 *   FILE *fp;
 *   struct student stud;
 *   fp=fopen("students.txt","rb");
 *   fread(&stud,sizeof(struct student),1,fp);
 *   . . .
 *
 *
 * fclose(): Closing Files
 *
 * man 3 fclose
 *
 * int fclose(FILE *stream);
 *
 * stream represents the pointer to the file stream that we wish to close.
 *
 * Example The following example closes the file represented by the file pointer fp.
 * fclose(fp);
 *
 *
 * fflush(): Flushing out to Files
 *
 * man 3 fflush
 *
 * int fflush(FILE *stream);
 *
 * stream refers to the stream that we wish to flush out.
 *
 * Example The following example flushes the standard input device and writes the buffered content (if any) into the associated file.
 * fflush(stdin);
 *
 *
 * fseek(): Relocating File Pointers
 *
 * int fseek(FILE *stream, long int offset, int whence);
 *
 * stream represents the file and offset represents the number of bytes from whence.
 * The argument whence refers to the location related to which the offset has to be set, that is, whether the offset has to be set from the current, end, or beginning of the file.
 *
 * Example The following sets the file pointer at the 0th byte, that is, at the beginning of the file.
 * fseek(fp,0, SEEK_SET);
 *
*/

/* Reading and writing students records */
#include <stdio.h>

struct student
{
	int roll,marks;
	char name[20];
};

int main()
{
	int i;
	FILE *fp;
	struct student stud;
	fp=fopen("students.txt","wb");
	printf("Enter roll, name and marks of three students\n");
	for (i=1;i<=3; i++)
	{
		scanf("%d %s %d", &stud.roll, stud.name, &stud.marks);
		fwrite(&stud,sizeof(struct student),1,fp);
	}
	fclose(fp);
	fp=fopen("students.txt","rb");
	printf("The records of the student in the file students.txt are as given below\n");
	for (i=1;i<=3; i++)
	{
		fread(&stud,sizeof(struct student),1,fp);
		printf("%d %s %d\n", stud.roll, stud.name, stud.marks);
	}
	printf("Third student\'s record is \n");
	fseek(fp,sizeof(struct student)*2, SEEK_SET);
	fread(&stud,sizeof(struct student),1,fp);
	printf("%d %s %d\n", stud.roll, stud.name, stud.marks);
	printf("First student\'s record is \n");
	fseek(fp,0, SEEK_SET);
	fread(&stud,sizeof(struct student),1,fp);
	printf("%d %s %d\n", stud.roll, stud.name, stud.marks);
	fclose(fp);
}

