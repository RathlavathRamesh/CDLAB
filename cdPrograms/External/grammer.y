%{
 #include<stdio.h>
 void yyerror(char *s);
 int flag = 0;
%}

%token 'a' 'b' '\n'

%%
N : S '\n' { printf("valid string\n");flag = 1;}
S: 'a' S 'b'
| {}
;
%%

int main(){
   yyparse();
   if(flag==0)printf("invalid string\n");
}

void yyerror(char *s){}
