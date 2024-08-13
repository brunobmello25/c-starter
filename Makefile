PROJECT_NAME = my_project

# Compiler
CC = gcc

# Flags
CFLAGS = -Wall -Werror -Iinclude

# Directories
SRC_DIR = src
TEST_DIR = tests
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
BIN_DIR = $(BUILD_DIR)/bin
TEST_BIN = $(BIN_DIR)/test_runner

# Source files
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

# Name of the target executable
TARGET = $(BIN_DIR)/$(PROJECT_NAME)

# Default target
all: $(TARGET)

run: $(TARGET)
	./$(TARGET)

build: $(TARGET)
	./$(TARGET)

# Test target
test: $(TEST_BIN)
	./$(TEST_BIN)  # Execute the test binary

# Clean up
clean:
	rm -rf $(OBJ_DIR)/*.o $(TARGET) $(TEST_BIN)

# Linking the application executable
$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CC) -o $@ $^

# Compiling object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Building tests
$(TEST_BIN): $(OBJ_DIR)/math_utils.o $(TEST_DIR)/test_math_utils.c
	@mkdir -p $(BIN_DIR)
	$(CC) -o $@ $(TEST_DIR)/test_math_utils.c $(OBJ_DIR)/math_utils.o $(CFLAGS)

.PHONY: all clean test
