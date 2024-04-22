%{
  #include<stdio.h> 
  int v=0,c=0;
%}
%% 
[aeiouAEIOU] {v++;} 
[a-zA-Z] {c++} 
%% 

int yywrap(){};

void main(){
  printf("ENter your alphabets: ");
  yylex();
  printf("\nnumbe of vowels are: %d\n",v);
  printf("number of consonents are: %d\n",c); 
}
