%{
#include <stdio.h>
%}

letter [a-zA-Z_]
digit [0-9]
identifier {letter}({letter}|{digit})*
keyword "int"|"float"|"while"|"if"|"else"|"for"
operator "="|"<="|"=="|"+"|"*"|"++"
separator "{"|"}"|"("|")"|";"|","

%%

{keyword} {
    printf("Keyword: %s\n", yytext);
}

{identifier} {
    printf("Identifier: %s\n", yytext);
}

{operator} {
    printf("Operator: %s\n", yytext);
}

{separator} {
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
