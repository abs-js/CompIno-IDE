CC = gcc
CFLAGS = -Wall -Wextra `pkg-config --cflags gtk+-3.0`
LIBS = `pkg-config --libs gtk+-3.0`
TARGET = compino-ide

all: $(TARGET)

$(TARGET): main.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c $(LIBS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
