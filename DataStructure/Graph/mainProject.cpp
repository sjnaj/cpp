/*
 * @Author: fengsc
 * @Date: 2021-12-07 16:04:52
 * @LastEditTime: 2021-12-08 02:35:01
 */
#include "src/GraphAdjacencyList.h"
#include <cstring>
using namespace std;
int main()
{
    char command[20];
    vector<int> path;
    int vertex, v, w, n, weight;
    while (scanf("%s%d", command, &n) && strcmp(command, "CREATE") != 0)
    {
        printf("please input \"CREATE vertexNum\" to create a graph first\n");
    }
    ALGraph<int> G(n, UNDIRECTED);
    ALGraph<int> SPTree(n);
    char names[n][5];
    while (true)
    {
        scanf("%s", command);
        if (strcmp(command, "VERTEX") == 0)
        {
            scanf("%d", &vertex);
            scanf("%s", names[vertex]);
            G.insert(vertex);
        }
        else if (strcmp(command, "EDGE") == 0)
        {
            scanf("%d%d%d", &v, &w, &weight);
            G.insert(v, w, weight);
        }
        else if (strcmp(command, "DUMP") == 0)
        {
            for (int i = 0; i < G.n; i++)
            {
                printf("vertexname:%s indegree:%d outdegree:%d\n", names[i], G.inDegree(i), G.outDegree(i));
                for (int j = G.firstNbr(i); j > -1; j = G.nextNbr(i, j))
                    printf("edge %s to %s : weight: %d\n", names[i], names[j], G.weight(i, j));
                printf("\n");
            }
        }
        else if (strcmp(command, "DFS") == 0)
        {
            scanf("%d", &n);
            G.dfs(n, path);
            for (int i = 0; i < path.size(); i++)
                printf("%s ", names[path[i]]);
            printf("\n");
            path.clear();
        }
        else if (strcmp(command, "SHORTEST_PATH")==0)
        {
            scanf("%d%d", &v, &w);
            G.prim(v);
            path = G.getPath(w);
            printf("shrotest path from %s to %s is:", names[v], names[w]);
            for (int i = path.size() - 1; i > -1; i--)
                printf("%s ", names[path[i]]);
            printf("\n");
            path.clear();
        }
        else if (strcmp(command, "SPANNING-TREE")==0)
        {
            scanf("%d", &n);
            G.prim(n, SPTree);
        }
        else
        {
            printf("BYE\n");
            break;
        }
    }
}