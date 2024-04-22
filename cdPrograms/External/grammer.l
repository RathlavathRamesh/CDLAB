%{
#include<stdio.h>
#include "y.tab.h"
%}

%%

[ab\n] {return yytext[0];}

%%

int yywrap(){
  return 1;
}
