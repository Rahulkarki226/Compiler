%{
#include<stdio.h>
%}

%%
"//".* { ; }
"/*"[^*/]*"*/" { ; }
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
