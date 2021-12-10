CC = gcc -Wall
OBJ      = dfs.o graph.o shell.o shortest-path.o spanning-tree.o
BIN      = graph
RM       = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after

clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	gcc $(OBJ) -o $(BIN) $(LIBS)

dfs.o: dfs.c
	$(CC) -c dfs.c -o dfs.o 

graph.o: graph.c
	$(CC) -c graph.c -o graph.o 

shell.o: shell.c
	$(CC) -c shell.c -o shell.o 

shortest-path.o: shortest-path.c
	$(CC) -c shortest-path.c -o shortest-path.o 

spanning-tree.o: spanning-tree.c
	$(CC) -c spanning-tree.c -o spanning-tree.o 
