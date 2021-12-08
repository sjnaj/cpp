/*
 * @Author: fengsc
 * @Date: 2021-11-30 15:07:32
 * @LastEditTime: 2021-12-04 00:15:04
 */
#pragma once
template <typename Tv, typename Te>
void Graph<Tv, Te>::dfs(int s, vector<Tv> &path)
{
    reset();
    int clock = 0;
    int v = s;
    do
    {
        if (status(v) == UNDISCOVERED)
            DFS(v, clock, path);
    } while (s != (v = (++v % n)));
}
template <typename Tv, typename Te>
void Graph<Tv, Te>::DFS(int v, int &clock, vector<Tv> &path)
{
    dTime(v) = ++clock;
    status(v) = DISCOVERED;
    path.emplace_back(vertex(v)); //访问数据域
    for (int u = firstNbr(v); u > -1; u = nextNbr(v, u))
    {
        switch (status(u))
        {
        case UNDISCOVERED: //u尚未发现，意味着支撑树可在此拓展
            type(v, u) = TREE;
            parent(u) = v;
            DFS(u, clock, path);
            break;
        case DISCOVERED: //u已被发现但尚未访问完毕，应属被后代指向的祖先
            type(v, u) = BACKWARD;//每一条BACKWARD的边都代表着一个有向环(loop)的存在
            break;
        default: //针对有向图，u已访问完毕（VISITED），则视承袭关系分为前向边(在当前顶点之后是非子女的后代)
                 //或跨边(在当前顶点之前是表亲,祖先已经被访问了)
            type(v, u) = (dTime(v) < dTime(u)) ? FORWARD : CROSS;
        }
    }
    status(v) = VISITED; //至此，当前顶点v方告访问完毕
    fTime(v) = ++clock;  //访问完毕时间
}