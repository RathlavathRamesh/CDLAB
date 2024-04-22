%{
  #include<stdio.h> 
  void yyerror(char *s);
%}
%token digit
%% 
S : L {printf("%d",$$);} 
L : L B {$$=2*$1 +$2;}
  | B {}
B : digit {}
%% 

void main(){
  yyparse();
}
 void yyerror(char *s){}
