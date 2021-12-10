#include "graph.h"

static int *visited;

static void visit(int i)
{
	int adj;
	
	printf(" %s", get_vertex_name(i));
	visited[i] = true;
	
	for (adj = first_adj(i); is_valid_vertex(adj); adj = next_adj(i, adj)) {
	    if (!visited[adj])
	        visit(adj);	
	}
}

void dfs(int start)
{
    visited = (int *)calloc(get_vertex_num(), sizeof(int));    
    
	printf("DFS(%s): ", get_vertex_name(start));
	visit(start);
	printf("\n");
	
	free(visited);
}
