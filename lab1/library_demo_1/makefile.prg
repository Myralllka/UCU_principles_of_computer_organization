CXX = g++
CXXFLAGS = -O3
LDLAGS = -O3
PRG_NAME =  hellomake
HEADERS = file1.h file2.h
SOURCES=main_file.cpp 
OBJS=$(subst .cpp,.o,$(SOURCES))

all: $(PRG_NAME)

$(PRG_NAME): $(OBJS)
	$(CXX)  $(LDLAGS) $^ -o $@ -l functions -L.

# Включити всі наявні залежності
-include $(OBJS:.o=.d)

%.o: %.cpp 
	$(CXX) -c $(CXXFLAGS) $< -o $@ 
	$(CXX) -MM -MP   -MT $@  -MF $*.d $(CXXFLAGS) $<
# Рядок вище генерує інформацію про залежності

.PHONY : clean
clean:
	rm -rf *.o *.d $(PRG_NAME)
