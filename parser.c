#include <stdio.h>
#include "lexer.h"

int main() {
    int token;

    while ((token = yylex()) != 0) {
        if (token == 1) {
            printf("Number: %s\n", yytext);
    }
  }
    return 0;
}

