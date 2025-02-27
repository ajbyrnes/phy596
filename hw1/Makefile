CXX = g++-13
CXXFLAGS = -std=c++20 -pedantic -Wall -Wextra -Wno-unused-parameter

all: main

main: main.o
	$(CXX) $(CXXFLAGS) -o main main.o

main.o: main.C
	$(CXX) $(CXXFLAGS) -c main.C

clean:
	rm -f main.o main

.PHONY: all clean