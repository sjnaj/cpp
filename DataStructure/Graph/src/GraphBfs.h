/*
 * @Author: fengsc
 * @Date: 2021-11-29 11:13:08
 * @LastEditTime: 2021-12-07 23:44:02
 */
#pragma once
template <typename Tv, typename Te>
void Graph<Tv, Te>::bfs(int s, vector<Tv> &path)
{
    if (!exists(s))
        return;
    reset();
    int v = s;
    int clock = 0;
    do //遍历每个不重复的连通域
    {
        if (status(v) == UNDISCOVERED)
        {
            BFS(v, clock, path);
        }
    } while (s != (v = (++v % n)));
}

template <typename Tv, typename Te>
void Graph<Tv, Te>::BFS(int v, int &clock, vector<Tv> &path)
{
    std::queue<int> Q;
    status(v) = DISCOVERED;
    dTime(v) = ++clock;
    Q.push(v);
    while (!Q.empty())
    {
        int v = Q.front();
        Q.pop();
        path.emplace_back(vertex(v)); //访问数据域
        for (int u = firstNbr(v); u > -1; u = nextNbr(v, u))
        {
            if (status(u) == UNDISCOVERED)
            {
                status(u) = DISCOVERED;
                dTime(v) = ++clock; //标记每个顶点被探测的时间(顺序)
                Q.push(u);
                type(v, u) = TREE; //引入树边支撑拓展树
                parent(u) = v;
            }
            else
                type(v, u) = CROSS; //有向图，归于跨边(v已被访问或发现)
        }
        status(v) = VISITED; //v被访问完毕
        //访问结束时间fTime与被探测时间等价
    }
}
