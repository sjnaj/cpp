/*
 * @Author: fengsc
 * @Date: 2021-12-10 10:37:47
 * @LastEditTime: 2021-12-10 11:48:35
 */
#include "graph.h"
#include "graph.cpp"
#include "shortest-path.cpp"
#include "dfs.cpp"
#include "spanning-tree.cpp"
#include "../../CppTest/class/src/timeCount.h"
int main(void)
{
	char cmd[128], name[NAME_SIZE];
	int i, n, start, end, weight;
	Timer timer;
	for (;;) {
		scanf("%s", cmd);
		if (strcmp(cmd, "BYE") == 0)
		    break;
		else if (strcmp(cmd, "CREATE") == 0) {
			scanf("%d", &n);
			create(n);
		} else if (strcmp(cmd, "VERTEX") == 0) {
			scanf("%d%s", &i, name);
			set_vertex_name(i, name);
		} else if (strcmp(cmd, "EDGE") == 0) {
			scanf("%d%d%d", &start, &end, &weight);
			add_edge(start, end, weight);
		} else if (strcmp(cmd, "DUMP") == 0)
			dump();	
		else if (strcmp(cmd, "DFS") == 0) {
			scanf("%d", &start);
			dfs(start);
		} else if (strcmp(cmd, "SPANNING-TREE") == 0) {
			scanf("%d", &start);
			spanning_tree(start);
		} else if (strcmp(cmd, "SHORTEST-PATH") == 0) {
			scanf("%d%d", &start, &end);
			shortest_path(start, end);
		} else	
		    printf("*** Bad command \"%s\"\n", cmd);
	}
	return 0;
}
