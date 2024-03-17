%{
#include<stdio.h>
%}
%%
^[a-zA-Z][a-zA-Z0-9]* { printf("Valid identifier");}
.|\n {}
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter I/P:\n");
    yylex();
    return 0;
}
