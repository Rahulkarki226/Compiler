%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}
%token DIGIT
%left '+' '-'
%left '*' '/'
%%
S: E '\n' {printf("output=%d\n", $1);}
 | ;
E: E '+' E {$$=$1+$3;}
 | E '-' E {$$=$1-$3;}
 | E '*' E {$$=$1*$3;}
 | E '/' E {$$=$1/$3;}
 | DIGIT {$$=$1;}
 ;
%%
int main(){
    yyparse();
    return 0;
}
void yyerror(char* msg)
{
    printf("%s\n",msg);
    printf("Arithmetic expression is invalid\n");
}
