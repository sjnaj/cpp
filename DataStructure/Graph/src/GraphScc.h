/*
 * @Author: fengsc
 * @Date: 2021-12-04 19:30:52
 * @LastEditTime: 2021-12-10 01:27:31
 */
template <typename Tv, typename Te>
void Graph<Tv, Te>::scc()
{
    if (direct == UNDIRECTED)
    {
        cout << "please try dcc" << std::endl;
        return;
    }
    reset();
    int v = 0;
    int clock = 0;
    stack<int> S;
    while (v != n - 1)
    {
        if (status(v) == UNDISCOVERED)
            SCC(v, clock, S);
        v++;
    }
}

#define hca(x) (fTime(x))           //利用闲置的fTime()充当hca(),highest connnected ancestor
template <typename Tv, typename Te> //顶点类型、边类型
void Graph<Tv, Te>::SCC(int v, int &clock, stack<int> &S)
{
    hca(v) = dTime(v) = ++clock; //初始的hca是探测时间
    status(v) = DISCOVERED;
    S.push(v);
    for (int u = firstNbr(v); - 1 < u; u = nextNbr(v, u))
        switch (status(u))
        { //视u的状态分别处理
        case UNDISCOVERED:
            parent(u) = v;
            type(v, u) = TREE;
            SCC(u, clock, S);                  //从顶点u处深入
            hca(v) = std::min(hca(v), hca(u)); //更新hca[v]
            break;
        case DISCOVERED: //在栈中
            type(v, u) = BACKWARD;
            hca(v) = std::min(hca(v), dTime(u)); //更新hca[v]
            break;
        default: //VISITED (有向图),与本算法无关
            type(v, u) = (dTime(v) < dTime(u)) ? FORWARD : CROSS;
            break;
        }

    if (hca(v) == dTime(v))
    { //输出一个SCC
        //*弹出当前SCC中（包括桥结点v）的所有节点

        while (v != S.top())
        {
            cout << vertex(S.top())<<' ';
            status(S.top()) = VISITED; //出栈输出宣告访问结束
            S.pop();
        }
        if (direct == DIRECTED) //v是桥的顶点，归于本强连通域，需要出栈
        {
            cout << vertex(S.top()); //输出v
            status(S.top()) = VISITED;
            S.pop();
        }
        cout << std::endl;
    }
}
#undef hca
template <typename Tv, typename Te>
template <typename T>
void Graph<Tv, Te>::scc2()
{
    if (direct == UNDIRECTED)
    {
        cout << "please try dcc" << std::endl;
        return;
    }
    vector<Tv> path;
    path.reserve(n);
    dfs(0, path);
    vector<int> order(n);
    for (int i = 0; i < n; i++)
        order[i] = i;
    std::sort(order.begin(), order.end(), [&](int i, int j) //获得回溯序列的逆序
              { return fTime(i) > fTime(j); });

    T *G = getRevese<T>();
    for (int i = 0, clock = 0; i < this->n; i++)
    {
        if (G->status(i) == UNDISCOVERED)
        {
            path.clear();
            G->DFS(order[i], clock, path);
            for (auto i : path)
                cout << i;
            cout << std::endl;
        }
    }
    delete G;
}
