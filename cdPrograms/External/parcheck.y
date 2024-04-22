%{
   #include<stdio.h> 
   yyerror(char *s);
   int flag=0;
%} 
%% 
% token '(' ')' 

N : L {flag=1;printf("paranthesis Are : valid\n");} 
L : L '(' L ')' {} 
  : {} 
%% 

void main(){
   
      yyparse();
      if(flag==0) 
        printf("paranthesis Are Invalid: \n");
}

yyerror(char *s){}

