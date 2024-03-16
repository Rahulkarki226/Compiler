// Design a LEX Code to count the number of lines, space, tab-meta
//  character and rest of characters in a given Input pattern. 
%{
#include<stdio.h>
int lines=0,spaces=0,tabs=0,others=0;
%}

%%
\n {lines++;}
" " {spaces++;}
"\t" {tabs++;}
. {others++;}
%%
int main()
{
printf("Enter i/p:\n");
yylex();
printf("lines:%d\n",lines);
printf("spaces:%d\n",spaces);
printf("tabs:%d\n",tabs);
printf("others:%d\n",others);
return 0;
}
int yywrap()
{
    return 1;
}
