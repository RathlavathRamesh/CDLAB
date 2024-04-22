%{
  #include<stdio.h> 
  #include "bintodex.tab.h"
  
%}

%%

[01] {yylval=atoi(yytext); return digit;} 

%%
int yywrap(){
  return 1;
}
