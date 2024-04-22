%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int yylex(void);
%}

%token ID EQUALS STAR


%%
E: S '\n' { printf("Valid\n"); return 0;};

S : L EQUALS R 
  | R
  ;

L : STAR R 
  | ID 
  ;

R : L 
  ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(char *s) {
    fprintf("Invalid Input");
}


/*Sample input & outputs
 
id=id=id  => Invalid
id=id	  =>Valid
id*id=id  =>Invalid

*/


