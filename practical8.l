//Design a LEX Code to extract all html tags in the given HTML file at 
// run time and store into Text file given at run time.
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
