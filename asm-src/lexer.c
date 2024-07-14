#include "asm.h"

bool isdelimeter(char c)
{
    return strchr(DELIMETERS, c) != NULL;
}
