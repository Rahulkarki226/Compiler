//Design a LEX Code to identify and print valid Identifier 
of C/C++ in given Input pattern. 
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
