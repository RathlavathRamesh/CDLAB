%{
#include<stdio.h>
#include "y.tab.h"
void yyerror(char *s);
%}

%%
"+" {return PLUS;}
"*" {return STAR;}
"\n" {return NEWLINE;}
. {return yytext[0];}
%%
int yywrap()
{
	return 1;
}
