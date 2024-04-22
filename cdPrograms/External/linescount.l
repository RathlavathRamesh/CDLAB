%{
   #include<stdio.h> 
   int wc=0,lc=0,ch=0,tc=0,sc=0;
%}
%% 
[\n] {sc++;lc++;} 
[\t] {tc++;sc++;} 
[ ] {sc++;} 
. {ch++;}
%% 

int wrap(){} 

void main(){
  printf("Enter your string or words: \n");
  yylex();
  printf("Number of lines are: %d\n",lc);
  printf("Number of spaces are: %d\n",sc); 
}
  

