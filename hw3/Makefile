CXX = g++
CXXFLAGS = -std=c++20 -pedantic -Wall -Wextra -Wno-unused-parameter
ROOTFLAGS = `root-config --cflags --glibs`

SRCS = writeROOTFile.cpp readROOTFile.cpp
EXECS = $(SRCS:.cpp=)

all: $(EXECS)

$(EXECS): %: %.cpp
	$(CXX) -o $@ $< $(ROOTFLAGS) $(CXXFLAGS) 

clean: 
	rm -rf *.o $(EXECS)

.PHONY: all clean