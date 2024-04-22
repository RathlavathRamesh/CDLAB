%{
#include <stdio.h>
%}

%token NUMBER

%%

S: /* empty */
        | S E '\n' { printf("= %d\n", $2); }
        ;

E:   E '+' T     { $$ = $1 + $3; }
    |   E '-' T     { $$ = $1 - $3; }
    |   T              { $$ = $1; }
    ;

T:   T '*' F   { $$ = $1 * $3; }
    |   T '/' F   { if ($3 != 0) $$ = $1 / $3; else yyerror("division by zero"); }
    |   F            { $$ = $1; }
    ;

F: NUMBER            { $$ = $1; }
    |   '-' F        { $$ = -$2; }
    |   '(' E ')'     { $$ = $2; }
    ;

%%
int yywrap(){
return 1;}

int yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
    return 0;
}

int main() {
    yyparse();
    return 0;
}

