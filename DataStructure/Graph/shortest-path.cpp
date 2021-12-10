/*
 * @Author: fengsc
 * @Date: 2021-12-10 10:37:47
 * @LastEditTime: 2021-12-10 10:48:03
 */
#include "graph.h"

static void display_status(int *done, int *distance, int *path, int n) 
{ 
    int i;

    if (getenv("debug") == NULL)
        return;

    printf("\nf: ");
    for (i = 0; i < n; i++)
        printf("%3d ", done[i]);
    printf("\nD: ");
    for (i = 0; i < n; i++) {
        if (distance[i] == INFINITY)
            printf("  X ");
        else
            printf("%3d ", distance[i]);
    }
    printf("\nP: ");
    for (i = 0; i < n; i++) {
        if (path[i] == INFINITY)
            printf("  / ");
        else
            printf("%3d ", path[i]);
    }
    printf("\n");
}

void shortest_path(int start, int end)
{
	int i, k, min_distance, weight, m, adj;
	int *done, *distance, *path;
	int n = get_vertex_num();
	
	done = (int *)calloc(sizeof(int), n);
	distance = (int *)calloc(sizeof(int), n);
	path = (int *)calloc(sizeof(int), n);
	
	printf("SHORTEST-PATH(%s=>%s): ", get_vertex_name(start), get_vertex_name(end));
	
	for (i = 0; i < n; i++) 
    	distance[i] = path[i] = INFINITY;
	
	distance[start] = 0;
	path[start] = -1;

	for (k = 0; k < n; k++) {

        display_status(done, distance, path, n);

		min_distance = INFINITY;
		m = -1;
		for (i = 0; i < n; i++) {
			if (!done[i] && distance[i] < min_distance) {
				min_distance = distance[i];
				m = i;
			}
		}
	
		done[m] = true;
		if (m == end) 
		    break;
		    
		for (adj = first_adj(m); is_valid_vertex(adj); adj = next_adj(m, adj)) {
			weight = get_weight(m, adj);
			if (distance[m] + weight < distance[adj]) {		
			    distance[adj] = distance[m] + weight;
				path[adj] = m;
			}
		}		
	}
    display_status(done, distance, path, n);

    /*  print the VETEX sequence of the path */
    {
    	int new_head = -1, old_head = end, t;
    	while (old_head != -1) {
    		t = old_head;
    		old_head = path[old_head];
    		path[t] = new_head;
    		new_head = t;
		} 
 	
		for (k = start; k != -1; k = path[k])
	    	printf(" %s", get_vertex_name(k));
	} 
	
	printf("\n\tDistance %d\n", distance[end]);
	
	free(done);
	free(path);
	free(distance);
}
