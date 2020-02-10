%{
#include<stdio.h>
%}

%token ID NUMBER count
%left '+' '-'
%left '*' '/'

%%
stmt:ID '=' expr; 
expr:expr '+' expr
|expr '-' expr
|expr '*' expr
|expr '/' expr
|ID
|NUMBER
|'('expr')'
;
%%

void main(){
	printf("Enter a vaild expression:\n");
	yyparse();
	printf("This is a valid expression\n");
	
}
void yyerror(){
	printf("Error enter again");
	exit(0);

}
