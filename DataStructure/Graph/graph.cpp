#include "graph.h"

struct VERTEX {
	char name[NAME_SIZE];
	struct EDGE *first_edge;
};

struct EDGE {
	int weight;
	int adj;
	struct EDGE *next;
};

static int num;
static struct VERTEX *vertex;

int get_vertex_num(void)
{
	return num;
} 
 
void create(int n)
{
	vertex = (struct VERTEX *)calloc(sizeof(struct VERTEX), n);
	num = n;
}

void set_vertex_name(int i, char *name)
{
    strcpy(vertex[i].name, name);
}

char *get_vertex_name(int i)
{
	return vertex[i].name;
}

void add_edge(int start, int end, int weight)
{
	struct EDGE *edge;
	
	edge = (struct EDGE *)malloc(sizeof(struct EDGE));
	edge->adj = end;
	edge->weight = weight;
	edge->next = vertex[start].first_edge; 
	vertex[start].first_edge = edge;
	
	edge = (struct EDGE *)malloc(sizeof(struct EDGE));
	edge->adj = start;
	edge->weight = weight;
	edge->next = vertex[end].first_edge; 
	vertex[end].first_edge = edge;
}

void dump(void) 
{
	int i;
	struct EDGE *e;
	printf("GRATH DATA:\n");
	for (i = 0; i < num; i++) {
		printf("  %d:[%s]", i, vertex[i].name);
		for (e = vertex[i].first_edge; e != NULL; e = e->next)
		    printf(" ->[%s]%d", vertex[e->adj].name, e->weight);
		printf("\n");
	}
}

int first_adj(int i) 
{
	if (vertex[i].first_edge != NULL)
	    return vertex[i].first_edge->adj;
	else
	    return -1;
}

int next_adj(int i, int adj)
{
	struct EDGE *e;
	for (e = vertex[i].first_edge; e != NULL; e = e->next) {
		if (e->adj == adj)
		    return e->next == NULL ? -1 : e->next->adj;
	}
	return -1;
}

int is_valid_vertex(int adj)
{
	return adj != -1;
}

int get_weight(int i, int j)
{
	struct EDGE *e;
	for (e = vertex[i].first_edge; e != NULL; e = e->next) {
		if (e->adj == j)
		    return e->weight;
	}
	return INFINITY;	
}
