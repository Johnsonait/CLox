#ifndef CLOX_VALUE_H
#define CLOX_VALUE_H

#include "common.h"

typedef double Value;

// Constant values are stored in an array that the VM can access/change dynamically
typedef struct {
    int capacity;
    int count;
    Value* values;
} ValueArray;

void initValueArray(ValueArray* array);
void writeValueArray(ValueArray* array, Value value);
void freeValueArray(ValueArray* array);
void printValue(Value value);

#endif