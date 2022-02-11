/*
 * @Author: fengsc
 * @Date: 2021-12-07 16:04:52
 * @LastEditTime: 2021-12-11 08:27:26
 */
#include "src/GraphAdjacencyList.h"
#include <cstring>
#define STRLEN 32
using namespace std;
int main()
{
    char command[STRLEN];
    vector<int> path;
    int vertex, v, w, n, weight;
    while (scanf("%s%d", command, &n) && strcmp(command, "CREATE") != 0)
        printf("please input \"CREATE vertexNum\" to create a graph first\n");
    ALGraph<int> G(n, UNDIRECTED);
    ALGraph<int> SPTree(n);                             //每一时刻只有一棵生成树
    char **names = (char **)malloc(n * sizeof(char *));
    for (int i = 0; i < n; i++)
        names[i] = (char *)malloc(STRLEN * sizeof(char));
    int base = -1; //最小生成数的源结点，避免重复生成当前的生成树，集中求到某个特定顶点的最短路径可发挥最大作用(一般情况下作用不大)
    printf("ALGraph with %d vertexs was initialized successfully\n", n);

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
        else if (strcmp(command, "DUMP") == 0) //边规模过于庞大时慎用
        {
            for (int i = 0; i < G.n; i++)
            {
                printf("vertexname:%s degree:%d\n", names[i], G.inDegree(i) + G.outDegree(i));
                for (int j = G.firstNbr(i); j > -1; j = G.nextNbr(i, j))
                    printf("edge %s to %s : weight: %d\n", names[i], names[j], G.weight(i, j));
                printf("\n");
            }
        }
        else if (strcmp(command, "DFS") == 0)
        {
            scanf("%d", &vertex);
            G.dfs(vertex, path);
            printf("DFS based on %s:", names[vertex]);
            for (int i = 0; i < path.size(); i++)
            {
                if (i % 20 == 0)
                    printf("\n");
                printf("%s ", names[path[i]]);
            }
            printf("\n");
            path.clear();
        }
        else if (strcmp(command, "SHORTEST-PATH") == 0)
        {
            scanf("%d%d", &v, &w);
            if (w != base)
            {
                SPTree.clear();
                G.dijkstra(w, SPTree); //更新生成树
                base = w;
            }
            path = SPTree.getPath(v);
            printf("shrotest path from %s to %s is:", names[v], names[w]);
            unsigned long long distance = 0;
            for (int i = 0; i < path.size(); i++)
            {
                printf(" %s", names[path[i]]);
                if (i > 0)
                    distance += SPTree.weight(path[i], path[i - 1]);
            }
            printf("\ndistance is %lld\n", distance);
            path.clear();
        }
        else if (strcmp(command, "SPANNING-TREE") == 0)
        {
            scanf("%d", &vertex);
            if (base != vertex) //更新生成树
            {
                SPTree.clear();
                base = vertex;
                G.prim(vertex, SPTree);
            }
            printf("spaning tree based on %s was created successfully\n", names[vertex]);
        }
        else if (strcmp(command, "CONNECTED-COMPONENT") == 0) //输出所有的双连通分量,输出的是下标,其余命令输出顶点名
        {
            printf("all the biconnected component:\n");
            G.bcc();
        }
        else if (strcmp(command, "BYE") == 0)
        {
            printf("BYE\n");
            break;
        }
        else
        {
            printf("bad command \"%s\"\n", command);
            while (getchar() != '\n')
                ;
        }
    }
    for (int i = 0; i < G.n; i++)
        free(names[i]);
    free(names);
}