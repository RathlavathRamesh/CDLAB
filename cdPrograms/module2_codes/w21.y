%{
#include<stdio.h>
int yylex(void);
void yyerror(char *s);
%}

%token PLUS STAR NEWLINE

%%
line:s NEWLINE { printf("Valid string\n"); return 0;}
    | NEWLINE { printf("Empty string\n"); return 0;}
    ;

s:s s PLUS 
    | s s STAR 
    |  
    ;
%%

int main()
{
	yyparse();
	return 1;
}
void yyerror(char *s)
{
	printf("Invalid String");
}
