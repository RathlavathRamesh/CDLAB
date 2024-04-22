#include<stdio.h>
#include<string.h>

struct production{
  char left[10];
  char right[10];
};

int main(){
    char temp[20];
    char *token1,*token2,*substring;
    int n;
    printf("enter n : ");
    scanf("%d",&n);
    struct production p[n];
    printf("enter n productions");
   
    
    for(int i=0;i<n;i++){
       scanf("%s" ,&temp);
       token1 = strtok(temp,"->");
       token2 = strtok(NULL,"->");
       strcpy(p[i].left,token1);
       strcpy(p[i].right,token2);
    }
    char inp[20],ch[2],stack[20];
    printf("enter input string : ");
    scanf("%s",inp);
    
    int inpLen = strlen(inp);
    int i=0;
    stack[0]='\0';
    while(1){
       if(i<inpLen){
          ch[0] = inp[i];
          ch[1]='\0';
          i++;
          strcat(stack,ch);
          printf("%s\t",stack);
          for(int k=i;k<inpLen;k++)printf("%c",inp[k]);
          printf("\t shift\n");   
       }
       
       for(int j=0;j<n;j++){
          substring = strstr(stack,p[j].right);
          if(substring!=NULL){
            int sublen = strlen(substring);
            int stacklen = strlen(stack);
            int stacktop = stacklen-sublen;
            stack[stacktop] = '\0';
            strcat(stack,p[j].left);
            printf("%s\t",stack);
            for(int k=i;k<inpLen;k++)printf("%c",inp[k]);
            printf("\t reduce %s->%s\n",p[j].left,p[j].right);
            j = -1;
          }
       }
       if(i==inpLen && strcmp(stack,p[0].left)==0){
         printf("accepted\n");break;
       }
       else if(i==inpLen){
         printf("not accepted\n");
         break;
       } 
    }
    
}
