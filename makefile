CXX = g++
CXXFLAGS = -Wall 
HEADERS = -I./src/include -I./lua/include
LIBS = ./lua/liblua54.a -lpthread
OBJ = main.o
EXEC = program

program : $(OBJ)
	$(CXX) $(OBJ) -o $(EXEC)

main.o : ./src/cpp/main.cpp ./src/include/main.h
	$(CXX) -c ./src/cpp/main.cpp $(CXXFLAGS) $(HEADERS) -o main.o $(LIBS)

clean:
	rm -rf $(EXEC) $(OBJ)