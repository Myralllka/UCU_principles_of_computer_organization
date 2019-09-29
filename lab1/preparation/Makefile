CXX = g++
CXXFLAGS = -O3
LDLAGS = -O3
BIN_DIR = bin
OBJ_DIR = obj
SOURCES = $(wildcard *.cpp)
OBJS = $(patsubst %.cpp,$(OBJ_DIR)/%.o,$(SOURCES))
PRG_NAME = hellomake

all: mdr $(BIN_DIR)/$(PRG_NAME)
-include $(OBJS:.o=.d)

mdr:
	test -d $(BIN_DIR) || mkdir $(BIN_DIR)
	test -d $(OBJ_DIR) || mkdir $(OBJ_DIR)

$(BIN_DIR)/$(PRG_NAME): $(OBJS)
	$(CXX) $(LDLAGS) $^ -o $@

$(OBJ_DIR)/%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $< -o $@
	$(CXX) -MM -MP -MT $@ -MF $(OBJ_DIR)/$*.d $(CXXFLAGS) $<

.PHONY : clean
clean: 
	rm -rf *.o $(OBJ_DIR)/*.o $(OBJ_DIR)/*.d $(BIN_DIR)/$(PRG_NAME)
