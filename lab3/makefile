C = gcc
FS = fasm
OBJ_D = obj
BIN_D = bin
NAME_S = call_from_asm
NAME_C = call_from_c

all: mdr $(BIN_D)/$(NAME_S) $(BIN_D)/$(NAME_C)

mdr:
	test -d bin || mkdir bin
	test -d obj || mkdir obj

$(BIN_D)/$(NAME_C): $(OBJ_D)/func_sum.o
	$(C) test.c $(OBJ_D)/func_sum.o -o $(BIN_D)/$(NAME_C)

$(BIN_D)/$(NAME_S): $(OBJ_D)/main.o $(OBJ_D)/func_sum.o
	$(C) $(OBJ_D)/main.o $(OBJ_D)/func_sum.o -o $(BIN_D)/$(NAME_S) -no-pie

$(OBJ_D)/main.o: main.s
	$(FS) main.s $(OBJ_D)/main.o

$(OBJ_D)/func_sum.o: func_sum.s 
	$(FS) func_sum.s $(OBJ_D)/func_sum.o
	

.PHONY : clean
clean:
	rm -rf bin/ obj/
