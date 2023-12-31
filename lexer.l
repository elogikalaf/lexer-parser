%{
#include <stdio.h>
#include "lexer.h"
%}

%{
// Token types
#define NUMBER 1
#define IDENTIFIER 2
#define BEGIN_TOKEN 3
#define END_TOKEN 4
#define WHITESPACE 5
#define UNKNOWN 6
#define SEMICOLON 7
#define FOR_TOKEN 8
#define IF_TOKEN 9
#define WHILE_TOKEN 10
#define DO_TOKEN 11
#define THEN_TOKEN 12
#define ELSE_TOKEN 13
#define TO 14
#define LEQ 15
#define NEQ 16
#define LT 17
#define GEQ 18
#define GT 19
#define ASSIGN 20
#define OF 21
#define PLUST 22
#define MINUS 23
#define MULT 24
#define EQUAL 25
#define ARRAY 26
#define HAT 27
#define REAL 28
#define CHAR 29
#define INT 30
#define DOTDOT 31
#define CLOSE_BRACKET 32
#define OPEN_BRACKET 33
%}

%%
real              { return REAL; } // Token for REAL
char              { return CHAR; } // Token for char
integer           { return INT; } // Token for integer
of                { return OF; } // Token for OF
array             { return ARRAY; } // Token for array
begin             { return BEGIN_TOKEN; } // Token for begin
end               { return END_TOKEN; } // Token for end
for               { return FOR_TOKEN; } // Token for FOR_TOKEN
if                { return IF_TOKEN; } // Token for IF_TOKEN
while             { return WHILE_TOKEN; } // Token for WHILE_TOKEN
do                { return DO_TOKEN; } // Token for DO_TOKEN
then              { return THEN_TOKEN; } // Token for THEN_TOKEN
else              { return ELSE_TOKEN; } // Token for ELSE_TOKEN
to                { return TO; } // Token for TO
"]"               { return CLOSE_BRACKET; } // Token for ]
"["               { return OPEN_BRACKET; } // Token for ]
".."              { return DOTDOT; } // Token for ..
"^"               { return HAT; } // Token for ^
"<="              { return LEQ; } // Token for <=
"<>"              { return NEQ; } // Token for <>
"<"               { return LT; } // Token for <
">="              { return GEQ; } // Token for >=
">"               { return GT; } // Token for >
"="               { return ASSIGN; } // Token for =
"+"               { return PLUST; } // Token for +
"-"               { return MINUS; } // Token for -
"*"               { return MULT; } // Token for *
";"              { return SEMICOLON; } // Token for ;
":="              { return EQUAL; } // Token for :=
[1-9][0-9]*     { return NUMBER; } // Token for numbers
[a-zA-Z_][a-zA-Z0-9_]*  { return IDENTIFIER; } // Tokea for identifiers
[ \t\n]         ; // Ignore whitespace and newline characters
.               { return UNKNOWN; } // Token for unknown characters

%%

