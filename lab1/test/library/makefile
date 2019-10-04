C = gcc
CFLAGS_SO = -c -O3 -fPIC
CFLAGS = -c -O3
OBJ_DIR = obj
BIN_DIR = bin
NAME = libbzip2.a
SONAME = libbzip2.so
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
COMPFLAGS = -shared -Wl,-soname,$(SONAME) -o $(BIN_DIR)/$(SONAME)

all: mdr $(BIN_DIR)/$(NAME) $(BIN_DIR)/$(SONAME)

mdr:
	test -d bin || mkdir bin
	test -d obj || mkdir obj

$(BIN_DIR)/$(NAME): $(OBJS)
	ar rcs $@ $^ 

$(BIN_DIR)/$(SONAME): $(OBJS)
	$(C) $(COMPFLAGS) $^

$(OBJ_DIR)/%.o: %.c
	$(C) $(CFLAGS_SO) $< -o $@

.PHONY : clean
clean:
	rm -rf bin/ obj/
