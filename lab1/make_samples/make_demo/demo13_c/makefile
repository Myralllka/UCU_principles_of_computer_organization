CC = gcc
CFLAGS = -O3
LDLAGS = -O3
PRG_NAME =  hellomake
BIN_DIR = bin
OBJ_DIR = obj
SOURCES =  $(wildcard src/*.c)
# SOURCES := $(shell find src -name "*.c")
# SOURCES != find src -name "*.c"
OBJS = $(patsubst src/%.c,$(OBJ_DIR)/%.o,$(SOURCES))

all: directories $(BIN_DIR)/$(PRG_NAME) 
	echo $(SOURCES)

directories:
	mkdir bin -p
	mkdir obj -p

$(BIN_DIR)/$(PRG_NAME): $(OBJS)
	$(CC)  $(LDLAGS) $^ -o $@ 

# Включити всі наявні залежності
-include $(OBJS:.o=.d)

$(OBJ_DIR)/%.o: src/%.c
	$(CC) -c $(CFLAGS) $<  -o $@
	$(CC) -MM -MP -MT $@ -MF $(OBJ_DIR)/$*.d $(CFLAGS) $<

.PHONY : clean directories
clean:
	rm -rf $(OBJ_DIR)/*.o $(OBJ_DIR)/*.d $(BIN_DIR)/$(PRG_NAME)