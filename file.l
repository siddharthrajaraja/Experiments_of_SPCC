%{
#include<stdlib.h>
#include<string.h>
#define MAX 1000000
#include <malloc.h>


	typedef struct node{
		char *s[MAX];
	struct	node * next;
		int count;
	
	} node ;

	typedef struct head{

		node * start;
	
	}head;

head x;
	
	int coutn = 0,common = 0;
//char string[100][100];
%}



%%
[a-zA-Z][a-zA-Z0-9]* {
printf("Identifier:");
puts(yytext);
printf("\n");
  insert(&x,yytext);
  
//string[coutn] = (char*) yytext;
//printf("Identifier found:%c\n",string[coutn]);
coutn++;common++;
};
[\{\}\+\=;,<>#\.&"\\\(\)%:] {
	printf("Special Symbol:\'%s\'\n",yytext);
	insert(&x,yytext);
common++;
}
%%


void insert(head *t,char ** ele){
	//printf("\nI am insert\n");
	node *p=(node *)malloc(sizeof(node));
	
	strcpy(p->s,ele);
	p->next=NULL;
		
	puts(p->s);
	
	
	
	node *q;
	q=t->start;
	
	if(t->start==NULL){
		t->start=p;
		p->count=1;
		return ;
	}
	
	int flag=0;
	
	while (q->next!=NULL){
		if(strcmp(q->s,ele)==0){q->count++;flag=1;break;}
		q=q->next;
	}
	
	if(flag==0){
		p->count=1;
		q->next=p;
		
	}
	
	

	

}

void display(head *t){
	node *p=t->start;
	while(p!=NULL){
		
		printf("%s \t %d\n",p->s,p->count);
		
		p=p->next;
		
	}
	

}

void main()
{  
	
	x.start=NULL;
	 	
 	yyin=fopen("op.c","r");
 	yylex();
	printf("\nList of values obtained : \n");
	
 	display(&x);
 	
}
 
int yywrap(){
return 1;
}
 
