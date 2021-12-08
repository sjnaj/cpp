/*
 * @Author: fengsc
 * @Date: 2021-12-07 21:49:18
 * @LastEditTime: 2021-12-08 01:51:10
 */
#pragma once
template <typename Tv, typename Te>
void Graph<Tv, Te>::prim(int s)
{
    reset();
    auto primPU = [](Graph<Tv, Te> *g, int v, int w)
    {
        if (g->priority(w) > g->weight(v, w))
        {
            g->priority(w) = g->weight(v, w);
            g->parent(w) = v;
        }
    };
    PFS(s, primPU);
}
template <typename Tv, typename Te>
void Graph<Tv, Te>::prim(int s, Graph<Tv, Te> &SPTree)
{
    reset();
    auto primPU = [](Graph<Tv, Te> *g, int v, int w)
    {
        if (g->priority(w) > g->weight(v, w))
        {
            g->priority(w) = g->weight(v, w);
            g->parent(w) = v;
        }
    };
    SPTree.direct = this->direct;
    for (int i = 0; i < this->n; i++) //初始化顶点
        SPTree.insert(i);
    PFS(s, primPU, SPTree);
}