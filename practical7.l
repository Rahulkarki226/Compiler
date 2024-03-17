//Design a LEX Code to remove the comments from any C-Program 
// given at run-time and store into ‘out.c’ file.
%{
#include<stdio.h>
%}

%%
"//".* { /* do nothing */ }
"/*"([^*]|[\n]|(\*+([^*/]|[\n])))*"*"+"/" { /* do nothing */ }
.|\n {fprintf(yyout,"%s",yytext);}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter I/p:\n");
    yyout=fopen("out.c","w");
    yylex();
    return 0;
}
