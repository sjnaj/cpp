/*
 * @Author: fengsc
 * @Date: 2021-12-07 21:49:18
 * @LastEditTime: 2021-12-09 08:17:49
 */
#pragma once
template <typename Tv, typename Te>
void Graph<Tv, Te>::prim(int s)
{
    reset();
    auto primPU = [](Graph<Tv, Te> *g, int v, int w)//更新优先级，使两个集合之间连接的路径保持最短，以便减小时间损耗(不区分则队列中会有废弃的边，空间上限大)
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