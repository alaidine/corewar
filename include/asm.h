#ifndef ASM_H
#define ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>
#include <stdbool.h>
#include <string.h>

#define MAX_LENGTH 100

#define DELIMETERS " ,"

struct lexer_s
{
    char *input;
    char byte;
    int index;
};

#endif // ASM_H
