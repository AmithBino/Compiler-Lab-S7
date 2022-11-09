%{
#include<stdio.h>
char name[10];
%}

%%
[\n] printf("Hello %s",name);
%%

int main(){
	printf("Enter the name");
	scanf("%s",name);
	yylex();
}
