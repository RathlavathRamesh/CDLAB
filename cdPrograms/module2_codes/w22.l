%{
#include<stdio.h>
#include "y.tab.h"
void yyerror(char *s);
%}

%%
"int" {return INT;};
"float" {return FLOAT;};
"," {return COMMA;};
[a-zA-Z_][a-zA-Z_0-9]* {yylval=atoi(yytext); return ID;};
. {return yyerror("Invalid");}
%%

int yywrap()
{
	return 1;
}

