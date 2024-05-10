%{
#include<stdlib.h>
int yylval;
#include "y.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext);return DIGIT;}
[-+*/\n]   return *yytext;
. {return yytext[0];}
%%
int yywrap(void)
{
    return 1;
}
