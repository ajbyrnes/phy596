CXX = g++
CXXFLAGS = -std=c++17 -pedantic -Wall -Wextra -Wno-unused-parameter

all: main

main: main.o fit.o
	$(CXX) $(CXXFLAGS) -o main main.o fit.o
	
main.o: main.C fit.h fit.C
	$(CXX) $(CXXFLAGS) -c main.C

fit.o: fit.C fit.h
	$(CXX) $(CXXFLAGS) -c fit.C

clean: 
	rm -f main.o fit.o main

.PHONY: all clean