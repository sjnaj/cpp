/*
 * @Author: fengsc
 * @Date: 2021-12-10 10:44:08
 * @LastEditTime: 2021-12-10 10:44:08
 */
#include "graph.h"

void spanning_tree(int start)
{
	int *done;
	int i, sum = 0, min_weight, weight;
	int from, to, adj;
	int n = get_vertex_num();
	
	printf("SPANNING-TREE(%s): ", get_vertex_name(start));
	
	done = (int *)calloc(sizeof(int), n);
	done[start] = true;    
	
	for (;;) {
		min_weight = INFINITY;
		from = to = -1;
		for (i = 0; i < n; i++) {
			if (!done[i])
			    continue;
			for (adj = first_adj(i); is_valid_vertex(adj); adj = next_adj(i, adj)) {
				if (done[adj])
				    continue;
				weight = get_weight(i, adj);
				if (weight < min_weight) {
					min_weight = weight;
					from = i;
					to = adj;
				}
			}
		}
		
		if (min_weight == INFINITY)
		    break;

		printf(" %s-%s(%d)", get_vertex_name(from), get_vertex_name(to), min_weight);
		done[to] = true;
		sum += min_weight;
	}
	printf("\n\tWeight of tree: %d\n", sum);
	
	free(done);
}
