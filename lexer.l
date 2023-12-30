%{
#include <stdio.h>
#include "lexer.h"
%}

%%

[0-9]+          { return 1; } // Token for numbers
[a-zA-Z_][a-zA-Z0-9_]*  { return 2; } // Token for identifiers
[=+*/-]         { return 3; } // Token for operators
[()]            { return 4; } // Token for parentheses

[ \t\n]         ; // Ignore whitespace and newline characters

.               { return 5; } // Token for unknown characters

%%

