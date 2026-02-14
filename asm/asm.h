#ifndef ASM_H
#define ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "op.h"

struct instruction {
  char *name;
  char code;
  char coding_byte;
  char nbr_args;
  int args[MAX_ARGS_NUMBER];
};

struct label {
  char *name;
  int offset;
};

struct prog {
  header_t header;
  size_t nbr_instructions;
  size_t nbr_labels;
  size_t instructions_capacity;
  size_t labels_capacity;
  struct instruction *instructions;
  struct label *labels;
};

#endif
