%{
#include <stdio.h>
%}
%%
"int"|"float"|"while"|"if"|"else"|"for"|"return" {
    printf("keyword: %s\n", yytext);
}
[a-zA-Z_][a-zA-Z_0-9]* {
    printf("Identifier: %s\n", yytext);
}
"="|"<="|"=="|"+"|"*"|"++" {
    printf("Operator: %s\n", yytext);
}
"{"|"}"|"("|")"|";"|"," {
    printf("Separator: %s\n", yytext);
}
.|\n {}

%%
int yywrap()
{
    return 1;
}
int main() {
    printf("Enter I/P:\n");
    yylex();
    return 0;
}
