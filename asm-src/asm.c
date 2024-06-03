#include "asm.h"

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return 1;
    }
    for (int i = 1; i < argc; i++)
    {
        printf("Processing file %s\n", argv[i]);
    }
    return 0;
}