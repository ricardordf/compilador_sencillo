%option noyywrap

%{
#include "gramatica_latino.tab.h"
extern YYSTYPE yylval;
int num_linea = 1; 

%}

%%

"+"	                                            return SUMA;
"-"	                                            return RESTA;
"="	                                            return IGUAL;
"("	                                            return APERTURAPARENTESIS;
")"	                                            return CIERREPARENTESIS;
imprimir|escribir|poner                         return IMPRIMIR;
[0-9]+                                          {yylval.enteroVal = atoi(yytext); return NUMERICO;}
[0-9]+.[0-9]+                                   {yylval.realVal   = atof(yytext); return NUMERICODECIMAL;}
_?[a-zA-Z0-9]+		                            {yylval.stringVal = strdup(yytext); printf(yytext);return IDENTIFICADOR;}
\n		                                        {num_linea++;} //Incrementa el numero de linea para saber en que num_linea se encuentra

%%
