#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int flag[100000] = {0};

struct node
{
    int adjvex;
    int weight;
    struct node *next;
};

struct vnode
{
    char vertex[15];
    struct node *firstedge = NULL;
};

void DFS(struct vnode nodenumber[], int j);
void DFStraverse(struct vnode nodenumber[], int num);

int main()
{
    char a[15] = {0};
    scanf("%s", a);
    int num;
    scanf("%d", &num);
    struct vnode nodenumber[num]; //创建有number个节点的邻接表
    while (1)
    {
        scanf("%s", a);

        if (!strcmp(a, "VERTEX"))
        { //设置x号节点的名字
            int numb;
            scanf("%d", &numb);
            scanf("%s", nodenumber[numb].vertex);
        }
        if (!strcmp(a, "EDGE"))
        {
            struct node *p, *q;
            int b, c, d; //b为顶点的序数，c为另一个顶点的序数，d为这条边的权值

            p = (struct node *)malloc(sizeof(struct node));

            scanf("%d%d%d", &b, &c, &d);
            p->adjvex = c;
            p->weight = d;
            p->next = NULL;

            if (nodenumber[b].firstedge == NULL)
            {
                nodenumber[b].firstedge = p;
            }
            else
            {
                q = nodenumber[b].firstedge;
                while (q->next != NULL)
                {
                    q = q->next;
                }
                q->next = p;
            }
        }
        if (!strcmp(a, "DFS"))
        {
            int start;
            scanf("%d", &start);
            DFS(nodenumber, start);
            printf("\n");
        }
        if (!strcmp(a, "DUMP"))
        {
            DFS(nodenumber, 0);
            printf("\n");
        }
    }

    return 0;
}

void DFS(struct vnode nodenumber[], int j)
{
    struct node *p;
    int k;
    flag[j] = 1;
    printf("%s ", nodenumber[j].vertex);
    p = nodenumber[j].firstedge;
    while (p)
    {
        k = p->adjvex;
        if (!flag[k])
            DFS(nodenumber, k);
        p = p->next;
    }
}

void DFStraverse(struct vnode nodenumber[], int num)
{
    int i;
    for (i = 0; i < num; i++)
        if (!flag[i])
            DFS(nodenumber, i);
}
