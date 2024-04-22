%{
  #include<stdio.h> 
  include "parcheck.tab.h" 
%}

%% 
[()\n] {return yytext[0];} 
%% 

int yywrap(){
  return 1;
}
