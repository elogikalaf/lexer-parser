#include <stdio.h>
#include "lexer.h"

#define NUMBER 1
#define IDENTIFIER 2
#define OPERATOR 3
#define PARENTHESIS 4
#define WHITESPACE 5
#define UNKNOWN 6


int main() {
    int token;

    while ((token = yylex()) != 0) {
        if (token == NUMBER) {
            printf("Number: %s\n", yytext);
    }
  }
    return 0;
}

