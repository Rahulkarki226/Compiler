//Design a LEX Code to count and print the number of total characters, words, 
//white spaces in given ‘Input.txt’ file.
%{
    #include<stdio.h>
    int charCount = 0;
    int wordCount = 0;
    int spaceCount = 0;
%}

%%

[^\n\t ]+   { charCount += yyleng; wordCount++; }
[ \t]+      { spaceCount++; }
\n          { /* Do nothing */ }

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
