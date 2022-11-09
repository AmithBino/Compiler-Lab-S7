%{
#include<stdio.h>
char word[10];
void disp(int flag);
int ch;
int flag;
%}

%%
[a|e|i|o|u][a-z]+ {flag=1;disp(flag);}
.+ {flag=0;disp(flag);}
%%

int main(){
	do{
	printf("Enter the word");
	scanf("%s",word);
	yylex();
	printf("Do you want to continue?(1-yes, 0-no)\n");
	scanf("%d",&ch);
	}while(ch);
}

void disp(int flag){
	if(flag==1)
		printf("It is a vowel\n");
	else
		printf("It is not a vowel\n");
}
