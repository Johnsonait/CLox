#ifndef CHUNK_H
#define CHUNK_H

#include <common.h>

typedef enum {
    OP_RETURN,
} OpCode;

typedef struct {
    int count;
    int capacity;
    uint8_t* code;
} Chunk;

#endif