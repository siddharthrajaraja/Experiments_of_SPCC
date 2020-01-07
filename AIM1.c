// Consider new sentence in new line if previous line ends with .
#include<stdio.h>
#include<string.h>
#include<ctype.h>
#include<stdlib.h>
#define MAX 100000

char s[MAX];

int characters,words=1,sentences,lines,tabs,numbers,spaces,letters;

void  count(char *s){
  int i;
	for(i=0;i<strlen(s);i++){
		characters++;
		
		if(isspace(s[i])){spaces++;}
		if(s[i]=='\t')tabs++; 
		if(isalnum(s[i])){
				if(isdigit(s[i]))numbers++;
				else letters++;
			}	
		if(s[i]=='\n'){lines++;}	
	}
	
	// To check word
	if(s[0]==' ')words=0;
	for(i=0;i<strlen(s);i++){
		if(isspace(s[i]))
			{	if(isspace(s[i+1])==0) words++;
			}	
	}
		
	for(i=1;i<strlen(s);i++){
		if(s[i]=='\n')
			{	if(s[i-1]=='.')sentences++ ;
			}	
	}
	

}

int main () {
   FILE *fp;
   char buffer[100];

   /* Open file for both reading and writing */
   fp = fopen("sid.txt", "r");

  
   /* Seek to the beginning of the file */
   fseek(fp, 0, SEEK_SET);

   /* Read and display data */
   fread(buffer, 100, 1, fp);
   printf("%s", buffer);
	count(buffer);
	
	count(s);
	printf("Number of spaces : %d \n Number of tabs : %d ",spaces-tabs,tabs);
	printf("\nNumber of letters : %d \n Count of numbers : %d ",letters,numbers);
	printf("\nNumber of new lines: %d",lines);
		   
	printf("\nNumber of words : %d",words-1);
	printf("\nNumber of sentences : %d",sentences);
	
	fclose(fp);
   
   return(0);
}
