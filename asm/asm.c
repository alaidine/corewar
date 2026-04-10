#include "asm.h"

#define TOKEN_CHARS "abcdefghijklmnopqrstuvwxyz_.0123456789"

#define REGISTER_T 0b01
#define DIRECT_T 0b10
#define INDIRECT_T 0b11

void add_instruction(struct instruction *instruction, struct prog *program)
{
  memcpy(program->instructions + program->nbr_instructions, instruction, sizeof(struct instruction));
  program->nbr_instructions++;
}

void add_label(struct label *label, struct prog *program)
{
  memcpy(program->labels + program->nbr_labels, label, sizeof(struct label));
  program->nbr_labels++;
}

void print_instructions(struct prog program)
{
  printf("=====================================================\n");
  for (size_t i = 0; i < program.nbr_instructions; i++) {
    struct instruction current_instruction = program.instructions[i];

    printf("instruction number %ld\n", i + 1);
    printf("name: %s\n", current_instruction.name);
    printf("opcode: %x\n", current_instruction.code);
    printf("coding_byte: %b\n", current_instruction.coding_byte);
    printf("number of arguments: %d\n", current_instruction.nbr_args);
    for (int i = 0; i < current_instruction.nbr_args; i++) {
      printf("argument %d: %x\n", i, current_instruction.args[i]);
    }
    printf("=====================================================\n");
  }
}

void print_labels(struct prog program)
{
  printf("=====================================================\n");
  for (size_t i = 0; i < program.nbr_labels; i++) {
    struct label label = program.labels[i];

    printf("label name name: %s\n", current_label.name);
    printf("=====================================================\n");
  }
}

void place_labels(struct prog *program)
{
  for (int i = 0; i < program->nbr_labels_to_place; i++) {
    int instruction_id = program->labels_to_place[i].instruction_id;
    int args_id = program->labels_to_place[i].args_id;
  }
}

char *peek(char *line)
{
  char *token = NULL;
  int i = 0;

  while (line[i] == ' ' || line[i] == '\t' || line[i] == '\r' || line[i] == '\n') {
    i++;
  }

  if (line[i] == '\0')
    return NULL;

  if (line[i] == LABEL_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = LABEL_CHAR;
  } else if (line[i] == COMMENT_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = COMMENT_CHAR;
  } else if (line[i] == DIRECT_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = DIRECT_CHAR;
  } else if (line[i] == SEPARATOR_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = SEPARATOR_CHAR;
  } else if (line[i] == '\"') {
    int j = ++i;
    while (line[i] != '\"') {
      i++;
    }
    token = (char *)calloc(i - j + 1, sizeof(char));
    strncpy(token, line + j, i - j);
  } else if (strchr(TOKEN_CHARS, line[i]) != NULL) {
    int j = i;
    while (strchr(TOKEN_CHARS, line[i]) != NULL && line[i] != '\0') {
      i++;
    }
    token = (char *)calloc(i - j + 1, sizeof(char));
    strncpy(token, line + j, i - j);
  }
  return token;
}

char *next_token(char *line, size_t *offset, size_t line_len)
{
  char *token = NULL;
  int i = 0;

  line += *offset;

  if (*offset >= line_len) {
    return NULL;
  }

  while (line[i] == ' ' || line[i] == '\t' || line[i] == '\r' || line[i] == '\n') {
    i++;
  }

  if (line[i] == '\0')
    return NULL;

  if (line[i] == LABEL_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = LABEL_CHAR;
    i++;
    *offset += 1;
  } else if (line[i] == COMMENT_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = COMMENT_CHAR;
    i++;
    *offset += i;
  } else if (line[i] == DIRECT_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = DIRECT_CHAR;
    i++;
    *offset += i;
  } else if (line[i] == SEPARATOR_CHAR) {
    token = (char *)calloc(2, sizeof(char));
    token[0] = SEPARATOR_CHAR;
    i++;
    *offset += i;
  } else if (line[i] == '\"') {
    int j = ++i;
    while (line[i] != '\"') {
      i++;
    }
    token = (char *)calloc(i - j + 1, sizeof(char));
    strncpy(token, line + j, i - j);
    i++;
    *offset += i;
  } else if (strchr(TOKEN_CHARS, line[i]) != NULL) {
    int j = i;
    while (strchr(TOKEN_CHARS, line[i]) != NULL && line[i] != '\0') {
      i++;
    }
    token = (char *)calloc(i - j + 1, sizeof(char));
    strncpy(token, line + j, i - j);
    *offset += i;
  }
  return token;
}

void parse_line(struct prog *program, char *line)
{
  size_t offset = 0;
  char *current_token = NULL;
  char *peeked_token = NULL;
  size_t line_len = strlen(line);

  while (true) {
    current_token = next_token(line, &offset, line_len);
    peeked_token = peek(line + offset);

    if (current_token == NULL) {
      break;
    }

    if (strcmp(current_token, ".name") == 0) {
      strcpy(program->header.prog_name, peeked_token);
      free(peeked_token);
      free(current_token);
    } else if (strcmp(current_token, ".comment") == 0) {
      strcpy(program->header.comment, peeked_token);
      free(peeked_token);
      free(current_token);
    } else if (strcmp(peeked_token, ":")) {
      struct label label = {
        .name = strdup(current_token),
        .offset = program->header.prog_size
      };
      add_label(&label, program);
      free(current_token);
      free(peeked_token);
    } else if (strcmp(current_token, "live")) {
      struct instruction instruction;

      memset(&instruction, 0, sizeof(instruction));

      instruction.name = strdup(current_token);
      program->header.prog_size += 1;

      program->header.prog_size += 4;

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      if (strcmp(current_token, "%") != 0) {
        fprintf(stderr, "Error\n");
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      instruction.args[instruction.nbr_args] = atoi(current_token);
      instruction.nbr_args++;

      add_instruction(&instruction, program);

      free(peeked_token);
      free(current_token);
    } else if (strcmp(current_token, "sti")) {
      struct instruction instruction;
      unsigned char coding_byte = 0;

      memset(&instruction, 0, sizeof(instruction));

      instruction.name = strdup(current_token);
      coding_byte |= (REGISTER_T << 6);
      program->header.prog_size += 1;

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      coding_byte |= (REGISTER_T << 4);
      program->header.prog_size += 1;
      instruction.nbr_args++;

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      if (strcmp(current_token, ",") != 0) {
        fprintf(stderr, "Error\n");
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);

      int arg = atoi(current_token);
      instruction.nbr_args++;

      if (strcmp(current_token, "%") == 0) {
        coding_byte |= (DIRECT_T << 2);
        program->header.prog_size += 2;
        free(current_token);
        current_token = next_token(line, &offset, line_len);
        instruction.nbr_args++;
      } else {
        coding_byte |= (REGISTER_T << 2);
        program->header.prog_size += 1;
        instruction.nbr_args++;
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      if (strcmp(current_token, ",")) {
        fprintf(stderr, "Error\n");
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);

      if (strcmp(current_token, "%") == 0) {
        coding_byte |= (DIRECT_T << 2);
        program->header.prog_size += 2;
        free(current_token);
        current_token = next_token(line, &offset, line_len);
        instruction.nbr_args++;
      } else {
        coding_byte |= (REGISTER_T << 2);
        program->header.prog_size += 1;
        instruction.nbr_args++;
      }

      free(current_token);
      free(peeked_token);
    } else if (strcmp(current_token, "ld")) {
      struct instruction instruction;
      unsigned char coding_byte = 0;

      program->header.prog_size += 1;

      instruction.name = strdup(current_token);

      free(current_token);
      current_token = next_token(line, &offset, line_len);

      if (strcmp(current_token, "%") == 0) {
        coding_byte |= (DIRECT_T << 6);
        program->header.prog_size += 4;
        free(current_token);
        current_token = next_token(line, &offset, line_len);
        instruction.args[instruction.nbr_args] = atoi(current_token);
        instruction.nbr_args++;
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);
      if (strcmp(current_token, ",")) {
        fprintf(stderr, "Error\n");
      }

      free(current_token);
      current_token = next_token(line, &offset, line_len);

      program->header.prog_size += 1;
      coding_byte |= (REGISTER_T << 4);
      instruction.args[instruction.nbr_args] = atoi(current_token + 1);
      instruction.nbr_args++;

      free(current_token);
      free(peeked_token);
    } else if (strcmp(current_token, "zjmp")) {
      struct instruction instruction;
      unsigned char coding_byte = 0;

      memset(&instruction, 0, sizeof(instruction));

      instruction.name = strdup(current_token);
      program->header.prog_size += 1;

      free(current_token);
      current_token = next_token(line, &offset, line_len);

      if (strcmp(current_token, "%") == 0) {
        program->header.prog_size += 2;

        free(current_token);
        current_token = next_token(line, &offset, line_len);

        if (strcmp(current_token, ":") == 0) {
          free(current_token);
          current_token = next_token(line, &offset, line_len);
        } else {
          fprintf(stderr, "Error\n");
        }
      } else {
        fprintf(stderr, "Error\n");
      }

      free(current_token);
      free(peeked_token);
    } else {
      free(current_token);
      free(peeked_token);
    }
  }
}

void write_compiled_program(char *pathname, struct prog program)
{
  char *compiled_program_pathname = (char *)malloc(sizeof(char) * (strlen(pathname) + 3));
  FILE *stream;
  int i = strlen(pathname) - 1;

  while (i >= 0) {
    if (pathname[i] == '/') {
      break;
    }
    i--;
  }

  i++;
  memset(compiled_program_pathname, 0, strlen(pathname) + 3);
  strcpy(compiled_program_pathname, pathname + i);
  i = strlen(compiled_program_pathname) - 1;
  strcpy(compiled_program_pathname + i, "cor");
  puts(compiled_program_pathname);

  stream = fopen(compiled_program_pathname, "w+");
  if (stream == NULL) {
    perror("fopen");
    return;
  }

  fwrite(&program, sizeof(header_t), 1, stream);

  free(compiled_program_pathname);
  fclose(stream);
}

void compile(char *pathname)
{
  FILE *stream;
  char *line = NULL;
  size_t len = 0;
  ssize_t nread;
  struct prog program;
  int magic = COREWAR_EXEC_MAGIC;

  memset(&program, 0, sizeof(struct prog));
  program.labels_capacity = 100;
  program.instructions_capacity = 100;
  program.instructions = malloc(sizeof(struct instruction) * 100);
  program.labels = malloc(sizeof(struct instruction) * 100);
  program.header.magic = ((magic & 0xff000000) >> 24) |
    ((magic & 0x00ff0000) >> 8) |
    ((magic & 0x0000ff00) << 8) |
    ((magic & 0x000000ff) << 24);

  stream = fopen(pathname, "r");
  if (stream == NULL) {
    perror("fopen");
    return;
  }

  while ((nread = getline(&line, &len, stream)) != -1) {
    parse_line(&program, line);
  }

  place_labels(&program);
  write_compiled_program(pathname, program);

  free(line);
  fclose(stream);

  for (int i = 0; i < program.nbr_instructions; i++) {
    free(program.instructions[i].name);
  }

  for (int i = 0; i < program.nbr_labels; i++) {
    free(program.labels[i].name);
  }

  free(program.labels);
  free(program.instructions);
}

int main(int argc, char **argv)
{
  if (argc != 2) {
    fprintf(stderr, "Usage: corewar_asm file_name[.s]\n");
    return 1;
  }
  compile(argv[1]);
  return 0;
}
