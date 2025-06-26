TARGET = game
SRCS = main.cpp game.cpp colors.cpp block.cpp blocks.cpp grid.cpp position.cpp
OBJS = $(SRCS:.cpp=.o)
CXX = g++
CXXFLAGS = -Wall -std=c++14 -I/usr/local/include -I. -DPLATFORM_DESKTOP
LIBS = -L/usr/local/lib -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -lwayland-client -lwayland-cursor -lwayland-egl -lxkbcommon

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

clean:
	rm -f $(TARGET) $(OBJS)
