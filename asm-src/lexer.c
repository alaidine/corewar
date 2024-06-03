#include "asm.h"

bool isdelimeter(char c)
{
    char *delimeters = " ,";

    return strchr(delimeters, c) != NULL;
}
