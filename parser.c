#include <stdio.h>
#include "lexer.h"

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

const char *token_names[] = {
    "INVALID",
    "NUMBER",
    "IDENTIFIER",
    "BEGIN",
    "END",
    "WHITESPACE",
    "UNKNOWN",
    "SEMICOLON",
    "FOR",
    "IF",
    "WHILE",
    "DO",
    "THEN",
    "ELSE",
    "TO",
    "LEQ",
    "NEQ",
    "LT",
    "GEQ",
    "GT",
    "ASSIGN",
    "OF",
    "PLUST",
    "MINUS",
    "MULT",
    "EQUAL",
    "ARRAY",
    "HAT",
    "REAL",
    "CHAR",
    "INT",
    "DOTDOT",
    "CLOSE_BRACKET",
    "OPEN_BRACKET"
};


int main() {
  int token;


  while ((token = yylex()) != 0) {
      printf("%s: %s\n", yytext, token_names[token]);
  }
  return 0;
}

