/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    EXIT = 258,
    INT = 259,
    WHILE = 260,
    FOR = 261,
    IF = 262,
    ELSE = 263,
    PRINT = 264,
    DO = 265,
    THEN = 266,
    TRUE = 267,
    FALSE = 268,
    COLON = 269,
    SEMICOLON = 270,
    ID = 271,
    INTNUM = 272,
    AND = 273,
    OR = 274,
    LESSTHAN = 275,
    GREATERTHAN = 276,
    EQUAL = 277
  };
#endif
/* Tokens.  */
#define EXIT 258
#define INT 259
#define WHILE 260
#define FOR 261
#define IF 262
#define ELSE 263
#define PRINT 264
#define DO 265
#define THEN 266
#define TRUE 267
#define FALSE 268
#define COLON 269
#define SEMICOLON 270
#define ID 271
#define INTNUM 272
#define AND 273
#define OR 274
#define LESSTHAN 275
#define GREATERTHAN 276
#define EQUAL 277

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 13 "myprogram.y" /* yacc.c:1909  */
int num; float numfloat; char id;

#line 101 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
