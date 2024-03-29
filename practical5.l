%{
    #include<stdio.h>
    int charCount = 0;
    int wordCount = 0;
    int spaceCount = 0;
%}

%%

[^\t\n" "]+   { charCount += yyleng; wordCount++; }
" "     { spaceCount++; }

%%
int yywrap() {
    return 1;
}
int main() { 
    yyin=fopen("input.txt","r");
    yylex();

    printf("Number of characters: %d\n", charCount);
    printf("Number of words: %d\n", wordCount);
    printf("Number of white spaces: %d\n", spaceCount);
    return 0;
}
