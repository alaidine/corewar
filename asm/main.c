#include "asm.h"

#define TOKEN_CHARS "abcdefghijklmnopqrstuvwxyz_.0123456789"

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

void handle_line(struct prog *program, char *line)
{
  size_t offset = 0;
  char *current_token = NULL;
  char *peeked_token = NULL;
  size_t line_len = strlen(line);

  while (true) {
    current_token = next_token(line, &offset, line_len);
    if (current_token == NULL) {
      break;
    }

    if (strcmp(current_token, ".name") == 0) {
      peeked_token = peek(line);
      strcpy(program->header.prog_name, peeked_token);
      free(peeked_token);
    }

    if (strcmp(current_token, ".comment") == 0) {
      peeked_token = peek(line);
      strcpy(program->header.comment, peeked_token);
      free(peeked_token);
    }

    free(current_token);
  }
}

void write_compiled_program(char *pathname)
{
  char *compiled_program_pathname = (char *)malloc(sizeof(char) * (strlen(pathname) + 3));
  FILE *stream;

  return;

  stream = fopen(compiled_program_pathname, "a+");
  if (stream == NULL) {
    perror("fopen");
    return;
  }

  free(compiled_program_pathname);
}

void compile(char *pathname)
{
  FILE *stream;
  char *line = NULL;
  size_t len = 0;
  ssize_t nread;
  struct prog program;

  memset(&program, 0, sizeof(struct prog));
  program.labels_capacity = 100;
  program.instructions_capacity = 100;
  program.instructions = malloc(sizeof(struct instruction) * 100);
  program.labels = malloc(sizeof(struct instruction) * 100);
  program.header.magic = COREWAR_EXEC_MAGIC;

  stream = fopen(pathname, "r");
  if (stream == NULL) {
    perror("fopen");
    return;
  }

  while ((nread = getline(&line, &len, stream)) != -1) {
    handle_line(&program, line);
  }

  free(line);
  fclose(stream);
  free(program.labels);
  free(program.instructions);
}

int main(int argc, char **argv)
{
  if (argc != 2) {
    fprintf(stderr, "Usage: corewar_asm file_name[.s] ...\n");
    return 1;
  }
  for (int i = 1; i < argc; i++) {
    compile(argv[1]);
  }
  return 0;
}
