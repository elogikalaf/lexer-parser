%{
#include <stdio.h>
#include "lexer.h"
%}

%{
// Token types
#define NUMBER 1
#define IDENTIFIER 2
#define OPERATOR 3
#define PARENTHESIS 4
#define WHITESPACE 5
#define UNKNOWN 6
%}

%%

[1-9]+(.[1-9]+)?           { return NUMBER; } // Token for numbers
[a-zA-Z_][a-zA-Z0-9_]*  { return IDENTIFIER; } // Token for identifiers
[=+*/-]         { return OPERATOR; } // Token for operators
[()]            { return PARENTHESIS; } // Token for parentheses

[ \t\n]         ; // Ignore whitespace and newline characters

.               { return UNKNOWN; } // Token for unknown characters

%%

