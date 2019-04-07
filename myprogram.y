%{
#include <stdio.h>     
#include <stdlib.h>
#include <ctype.h>
void yyerror (char *s);
int yylex();
int symbols[52];
int symbolVal(char symbol);
void updateSymbolVal(char symbol, int val);
%}

%start program
%union {int num; float numfloat; char id;}   
%token EXIT
%token INT
%token WHILE
%token FOR 
%token IF
%token ELSE 
%token PRINT
%token DO
%token THEN
%token TRUE 
%token FALSE
%token COLON
%token SEMICOLON
%token <id> ID
%token <num> INTNUM
%type <id> assignment
%type <num> program exp term factor

%left AND OR
%left LESSTHAN GREATERTHAN EQUAL 
%left '+' '-'
%left '*' '/' '%'

%%

program : assignment ';'                {;}
            | EXIT ';'                  {exit(EXIT_SUCCESS);}
            | PRINT exp ';'             {printf("\n",$2);}
            | program assignment ';'    {;}
            | program PRINT exp ';'     {printf("\n",$3);}
            | program EXIT ';'          {exit(EXIT_SUCCESS);}
            | program FOR '('exp ';' exp ';' exp')'  body 	{printf("For loop");}
                    | WHILE  '(' exp ')' body			        {printf("While loop");}
                    | DO codeblock WHILE  exp  ';'		{printf("DO while");}
                    | IF  '(' exp ')' body				        {printf("IF");}
                    | IF '(' exp ')'body	ELSE body		{printf("IF..ELSE");}
                    ;
                        body: stmt
                        | codeblock
                        ;
                        codeblock:'{' stmt_list '}'
                        ;
                        stmt_list: stmt_list stmt
                        |
                        ;
                        stmt: exp ';'
                        ;                       

        ;
assignment : ID '=' exp  { updateSymbolVal($1,$3); }
exp     : term                           {$$ = $1;}
        | exp '+' term                   {$$ = $1 + $3;}
        | exp '-' term                   {$$ = $1 - $3;}
        ;
term    : factor                          {$$ = $1;}
        |term '*' factor                  {$$ = $1 * $3;}        
        |term '/' factor                  {$$ = $1 / $3;}
        ;
factor  : INTNUM                          {$$ = $1;}
        | '('exp')'                       {$$ = $2;}
        ;

%%        

main()
{
yyparse();
}
int computeSymbolIndex(char token)
{
	int idx = -1;
	if(islower(token)) {
		idx = token - 'a' + 26;
	} else if(isupper(token)) {
		idx = token - 'A';
	}
	return idx;
} 
int symbolVal(char symbol)
{
	int bucket = computeSymbolIndex(symbol);
	return symbols[bucket];
}
void updateSymbolVal(char symbol, int val)
{
	int bucket = computeSymbolIndex(symbol);
	symbols[bucket] = val;
}
int main (void) {
	/* init symbol table */
	int i;
	for(i=0; i<52; i++) {
		symbols[i] = 0;
	}

	return yyparse ( );
}




