#include <stdio.h>
#include "lexer.h"

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
#define COLOR 21
#define PLUST 22
#define MINUS 23
#define MULT 24
#define EQUAL 25

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
    "COLOR",
    "PLUST",
    "MINUS",
    "MULT",
    "EQUAL"
};


int main() {
  int token;


  while ((token = yylex()) != 0) {
      printf("%s\n", token_names[token]);
  }
  return 0;
}

