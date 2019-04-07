%{

#include <stdio.h>

%}

%%
\+                      {printf("ADDITION");}
\-                      {printf("SUBSTRACTION");}
\*                      {printf("MULTIPLICATION ");}
\/                      {printf("DIVISION");}
\%                      {printf("MODULUS");}
\<                      {printf("LESSTHAN");}
\>                      {printf("GREATERTHAN");}
\=                             {printf("EQUAL");}
\:                             {printf("COLON");}
\;                             {printf("SEMICOLON");}
.                             {printf("Syntax Error!");}

if                            {printf("IF");}
else                          {printf("ELSE");}
while                         {printf("WHILE");}
and                           {printf("AND");}
or                            {printf("OR");}
do                            {printf("DO");}
print                         {printf("PRINT");}
then                          {printf("THEN");}
true                          {printf("BOOLEAN");}
false                         {printf("BOOLEAN");}
int                     {printf("INTEGER ");}

[a-z][A-Z0-9]*                {printf("WORD");}
[0-9]*                        {printf("DIGIT");}
[ \t\n]                             
 

%%

int yywrap(void)
{

return 1;

}


