CXX = g++
CXXFLAGS = -O3
LDLAGS = -O3
PRG_NAME =  hellomake
BIN_DIR = bin
OBJ_DIR = obj
SOURCES =  $(wildcard src/*.cpp)
# SOURCES := $(shell find src -name "*.cpp")
# SOURCES != find src -name "*.cpp"
OBJS = $(patsubst src/%.cpp,$(OBJ_DIR)/%.o,$(SOURCES))

all: directories $(BIN_DIR)/$(PRG_NAME) 
	echo $(SOURCES)

directories:
	mkdir bin -p
	mkdir obj -p

$(BIN_DIR)/$(PRG_NAME): $(OBJS)
	$(CXX)  $(LDLAGS) $^ -o $@ 

# Включити всі наявні залежності
-include $(OBJS:.o=.d)

$(OBJ_DIR)/%.o: src/%.cpp
	$(CXX) -c $(CXXFLAGS) $<  -o $@
	$(CXX) -MM -MP -MT $@ -MF $(OBJ_DIR)/$*.d $(CXXFLAGS) $<

.PHONY : clean directories
clean:
	rm -rf $(OBJ_DIR)/*.o $(OBJ_DIR)/*.d $(BIN_DIR)/$(PRG_NAME)