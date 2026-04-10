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
  unsigned char coding_byte;
  char nbr_args;
  bool coding_byte_present;
  int args[MAX_ARGS_NUMBER];
  int offset;
};

struct label {
  char *name;
  int offset;
};

struct labels_to_place {
  int instruction_id;
  int args_id;
  char *name;
};

struct prog {
  header_t header;
  size_t nbr_instructions;
  size_t nbr_labels;
  size_t nbr_labels_to_place;
  size_t instructions_capacity;
  size_t labels_capacity;
  size_t labels_to_place_capacity;
  struct instruction *instructions;
  struct label *labels;
  struct labels_to_place *labels_to_place;
};

#endif
