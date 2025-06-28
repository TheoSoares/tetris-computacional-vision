all:
	g++ game.cpp block.cpp blocks.cpp colors.cpp grid.cpp main.cpp position.cpp -o game -lraylib

run:
	./game