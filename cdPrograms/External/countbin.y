%{
  #include<stdio.h> 
  int c=0;
  void yyerror(char *s);
%}

%token digit '\n'

%% 
N : L '\n' {printf("number of binary digits:%d\n",c);} 
L : B L 
  | B 
B : digit {c++;} 
%% 

int main(){
   yyparse();
}
void yyerror(char *s){}
