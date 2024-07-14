#define _GNU_SOURCE

#include "asm.h"

int main(int argc, char **argv)
{
    FILE *stream;
    char *line = NULL;
    size_t len = 0;
    ssize_t nread;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    stream = fopen(argv[1], "r");
    if (stream == NULL) {
        perror("fopen");
        return EXIT_FAILURE;
    }

    while ((nread = getline(&line, &len, stream)) != -1) {
        fprintf(stdout, "%s", line);
    }

    return EXIT_SUCCESS;
}
