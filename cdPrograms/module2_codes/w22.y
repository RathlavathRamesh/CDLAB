%{
#include<stdio.h>
int yylex(void);
void yyerror(char *s);
int f=0;
%}
%token INT FLOAT ID COMMA NEWLINE

%%
E: {}
| D {printf("Valid input");f=1;return 0;}
D: T L {};
T: INT
| FLOAT ;
L: L COMMA ID
| ID ;
%%

void main()
{
	yyparse();
	if(f==0)
	{
		printf("Invalid input");
	}
}
void yyerror(char *s)
{
	
}
