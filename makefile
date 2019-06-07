CFLAGS = -std=c++11 -Wall -pedantic

bin/main: bin/main.o
	g++ -g -o bin/main bin/main.o bin/Game.o $(CFLAGS) -lncurses

bin/main.o: src/main.cpp
	mkdir -p bin
	g++ -g -c -o bin/main.o src/main.cpp $(CFLAGS) -lncurses

bin/Game.o: src/Game.cpp src/Game.hpp
	mkdir -p bin
	g++ -g -c -o bin/Game.o src/Game.cpp $(CFLAGS) -lncurses