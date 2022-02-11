/*
 * @Author: fengsc
 * @Date: 2021-12-07 14:15:32
 * @LastEditTime: 2021-12-26 11:42:31
 */
#pragma once
#include "/home/fengsc/Desktop/cpp/DataStructure/Quene/PrioQueen.h"
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
                     // status(v) = VISITED;
    parent(v) = -1;
    IndexMinPQ Q(n); //创建容量为n的下标优先队列
    //PQueen<int> Q(n); //普通优先级队列
    Q.enqueue(v, priority(v));
    while (!Q.empty())
    {
        v = Q.dequeue();
       /* if (status(v) == VISITED) //越过已失效的边，用于普通优先级队列
            continue;*/
        for (int w = firstNbr(v); w > -1; w = nextNbr(v, w)) //更新在剩余集合中当前顶点邻居的优先级
            if (status(w) == UNDISCOVERED)
            {
                prioUpdater(this, v, w);
                if (Q.exists(w)) //更新队列
                    Q.change(w, priority(w));
                else
                    Q.enqueue(w, priority(w));
            }
        /*for (int shortest = INT_MAX, w = 0; w < n; w++) //查找剩余集合中优先级最高(数值最低)的顶点(最短边)
        {
            if (status(w) == UNDISCOVERED)
                if (shortest > priority(w))
                {
                    shortest = priority(w);
                    v = w;
                }
        }*/
        status(v) = VISITED; //更新选中的新的顶点和相关的边
        int prt = parent(v);
        if (prt != -1) //排除源点
        {
            type(prt, v) = TREE;                          //标记原树在生成树对应的边
            SPTree.insert(prt, v, weight(prt, v), (Te)1); //生成树和原图顶点的下标相同
            SPTree.parent(v) = prt;
        }
    }
}
template <typename Tv, typename Te>
template <typename PU>
void Graph<Tv, Te>::PFS(int v, PU prioUpdater) //标记树边和双亲域，不生成生成树实体
{
    //图中顶点初始优先级为INT_MAX
    priority(v) = 0; //初始化源顶点
    status(v) = VISITED;
    parent(v) = -1;
    IndexMinPQ<int> Q(n); //创建容量为n的优先级数组
    while (1)
    {
        for (int w = firstNbr(v); w > -1; w = nextNbr(v, w)) //更新在剩余集合中邻居的优先级
            if (status(w) == UNDISCOVERED)
            {
                prioUpdater(this, v, w);
                if (Q.exists(w)) //更新队列
                    Q.change(w, priority(w));
                else
                    Q.enqueue(w, priority(w));
            }
        v = Q.dequeue();
        if (status(v) == VISITED) //如果没有新的顶点则证明查找完毕,只修改原图时这样可以更快退出
            break;
        status(v) = VISITED; //更新选中的新的顶点和相关的边
        type(parent(v), v) = TREE;
    }
}