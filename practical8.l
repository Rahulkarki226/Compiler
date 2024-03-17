%{
#include<stdio.h>
%}

%%
"<"[^>]*> { fprintf(yyout, "%s\n", yytext); }
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter I/p:\n");
    yyout=fopen("out.txt","w");
    yylex();
    return 0;
}
