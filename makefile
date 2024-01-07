CC = gcc
CFLAGS = -std=c99 -Iinclude
DEPS = $(wildcard include/*.h)
SRC = main.c $(wildcard src/*.c)
OBJ_DIR = obj
OBJ = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SRC))
BIN = bin/lox

$(BIN): $(OBJ)
	@mkdir -p bin
	@$(CC) -o $@ $^ $(CFLAGS)

$(OBJ_DIR)/%.o: %.c $(DEPS)
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	@rm -f $(OBJ) $(BIN)