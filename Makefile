# Makefile - Proyecto Hibrido
CC = gcc
AS = as
BUILD_DIR = build
SRC_DIR = src

all: $(BUILD_DIR)/libcalculos.so

$(BUILD_DIR)/libcalculos.so: $(BUILD_DIR)/ops.o $(SRC_DIR)/bridge.c
	$(CC) -shared -o $@ $(SRC_DIR)/bridge.c $(BUILD_DIR)/ops.o -fPIC

$(BUILD_DIR)/ops.o: $(SRC_DIR)/ops.s
	$(AS) -o $@ $(SRC_DIR)/ops.s

clean:
	rm -f $(BUILD_DIR)/*.o $(BUILD_DIR)/*.so
