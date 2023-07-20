bison -d -v gramatica_latino.y        
flex -o latino.lex.c lexico_latino.flex 
gcc -o COMPILADO gramatica_latino.tab.c latino.lex.c
./COMPILADO ./codigo.latino