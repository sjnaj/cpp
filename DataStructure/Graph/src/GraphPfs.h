/*
 * @Author: fengsc
 * @Date: 2021-12-07 14:15:32
 * @LastEditTime: 2021-12-08 01:15:20
 */
#pragma once

template <typename Tv, typename Te>
template <typename PU>
void Graph<Tv, Te>::pfs(int s, PU prioUpdater)
{
    reset();
    int v = s;
    do
    {
        if (UNDISCOVERED == status(v))
            PFS(v, prioUpdater);
    } while (s != (v = (++v % n)));
}
template <typename Tv, typename Te>
template <typename PU>
void Graph<Tv, Te>::PFS(int v, PU prioUpdater, Graph<Tv, Te> &SPTree)
{
    //图中顶点初始优先级为INT_MAX
    priority(v) = 0; //初始化源顶点
    status(v) = VISITED;
    parent(v) = -1;
    while (1)
    {
        for (int w = firstNbr(v); w > -1; w = nextNbr(v, w)) //更新在剩余集合中邻居的优先级
            if (status(w) == UNDISCOVERED)
                prioUpdater(this, v, w);
        for (int shortest = INT_MAX, w = 0; w < n; w++) //查找剩余集合中优先级最高(数值最低)的顶点(最短边)
        {
            if (status(w) == UNDISCOVERED)
                if (shortest > priority(w))
                {
                    shortest = priority(w);
                    v = w;
                }
        }
        if (status(v) == VISITED) //如果没有新的顶点则证明查找完毕
            break;
        status(v) = VISITED; //更新选中的新的顶点和相关的边
        int prt = parent(v);
        type(prt, v) = TREE;                          //标记原树在生成树对应的边
        SPTree.insert(prt, v, weight(prt, v), (Te)1); //注意这部分的loc，生成树和原图顶点的下标是不同的
        SPTree.parent(v) = prt;
    }
}
template <typename Tv, typename Te>
template <typename PU>
void Graph<Tv, Te>::PFS(int v, PU prioUpdater)
{
    //图中顶点初始优先级为INT_MAX
    priority(v) = 0; //初始化源顶点
    status(v) = VISITED;
    parent(v) = -1;
    while (1)
    {
        for (int w = firstNbr(v); w > -1; w = nextNbr(v, w)) //更新在剩余集合中邻居的优先级
            if (status(w) == UNDISCOVERED)
                prioUpdater(this, v, w);
        for (int shortest = INT_MAX, w = 0; w < n; w++) //查找剩余集合中优先级最高(数值最低)的顶点(最短边)
        {
            if (status(w) == UNDISCOVERED)
                if (shortest > priority(w))
                {
                    shortest = priority(w);
                    v = w;
                }
        }
        if (status(v) == VISITED) //如果没有新的顶点则证明查找完毕
            break;
        status(v) = VISITED; //更新选中的新的顶点和相关的边
        type(parent(v), v) = TREE;
    }
}