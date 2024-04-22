%{
   #include<stdio.h>
   int mc=0,sc=0;
%}

%%
"/*"[a-zA-Z0-9 \t\n]*"*/" {mc++;}
"//"[a-zA-Z0-9 \t]*"\n" {sc++;}
%%

int yywrap(){
   return 1;
}


//int main(int argc,char* argv[]){
int main(){
 
   yyin=fopen("input.c","r");//"input.c"
   yyout=fopen("out.c","w");

 yylex();
 printf("number of multiple line comments:%d\n",mc);
 printf("number of single line comments:%d\n",sc);
}
