/*
 * @Author: fengsc
 * @Date: 2021-12-07 17:27:11
 * @LastEditTime: 2021-12-08 01:13:56
 */
#pragma once
template <typename Tv, typename Te>
void Graph<Tv, Te>::dijkstra(int s, Graph<Tv, Te> &SPTree)
{
    reset();
    auto DijkPU = [](Graph<Tv, Te> *g, int v, int w) //优先级比较函数
    {
        if (g->priority(w) > g->priority(v) + g->weight(v, w))
        {
            g->priority(w) = g->priority(v) + g->weight(v, w);
            g->parent(w) = v;
        }
    };
    SPTree.direct = this->direct;
    for (int i = 0; i < this->n; i++)//初始化顶点
        SPTree.insert(i);
    PFS(s, DijkPU, SPTree);
}
template <typename Tv, typename Te>
void Graph<Tv, Te>::dijkstra(int s)
{
    reset();
    auto DijkPU = [](Graph<Tv, Te> *g, int v, int w) //优先级比较函数
    {
        if (g->priority(w) > g->priority(v) + g->weight(v, w))
        {
            g->priority(w) = g->priority(v) + g->weight(v, w);
            g->parent(w) = v;
        }
    };
    PFS(s, DijkPU);
}