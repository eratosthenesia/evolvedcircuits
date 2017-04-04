%option noyywrap
%{
#include <stdio.h>
int nchar=0, nword=0, nline=0;
%}
%%
\n { nline++; nchar++; }
[^ \t\n]+ {nword++; nchar+=yyleng;}
. {nchar++;}
%%
int main(void) {
  yylex();
  printf("%d\t%d\t%d\n", nchar, nword, nline);
return 0; }
