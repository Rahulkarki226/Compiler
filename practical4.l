/*Design a LEX Code for Tokenizing (Identify and print 
OPERATORS, SEPERATORS, KEYWORDS, IDENTIFERS) the following C-fragment:
int p=1,d=0,r=4,
float m=0.0, n=200.0,
while (p <= 3)
{ if(d==0)
{ m= m+n*r+4.5, d++,  }
else
{ r++, m=m+r+1000.0,  }
	p++,  }
*/

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
