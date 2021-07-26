# Variables #
CC = gcc
BIN = glxgears.exe
SRC = main.c
OBJ = main.o

# Flags Compilateur #
 
CFLAGS = -Wall -O2 -pedantic-errors -mwindows
 
# Flags pour l'editeur de liens #
 
LDFLAGS = -lmingw32 -lglu32 -lopengl32 -lgdi32
 
# Construction du programme #

all: $(BIN)
 
$(BIN): $(SRC)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ) 
	$(CC) $(OBJ) $(LDFLAGS) -o $(BIN)

# Nettoyage #

clean:
	rm -f *.o $(BIN)