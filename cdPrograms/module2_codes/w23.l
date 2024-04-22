%{
#include "y.tab.h"
%}

%%

"="     { return EQUALS; }
"*"     { return STAR; }
[a-zA-Z]+ { yylval = atoi(yytext); return ID; }
\n      { return '\n'; }
.       { /* ignore all other characters */ }

%%

int yywrap()
{
}
