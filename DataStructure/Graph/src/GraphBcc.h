/*
 * @Author: fengsc
 * @Date: 2021-12-03 22:25:21
 * @LastEditTime: 2021-12-10 01:28:39
 */
template <typename Tv, typename Te>
void Graph<Tv, Te>::bcc()
{
    if (direct == DIRECTED)
    {
        cout << "please try scc or scc2" << std::endl;
        return;
    }
    reset();
    int v = 0;
    int clock = 0;
    stack<int> S;
    while (v != n - 1)
    {
        if (status(v) == UNDISCOVERED)
        {
            BCC(v, clock, S);
            S.pop(); //*遍历返回后，弹出栈中最后一个顶点——当前连通域的起点
        }
        v++;
    }
}

#define hca(x) (fTime(x))           //利用闲置的fTime()充当hca(),highest connnected ancestor
template <typename Tv, typename Te> //顶点类型、边类型
void Graph<Tv, Te>::BCC(int v, int &clock, stack<int> &S)
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
            BCC(u, clock, S); //从顶点u处深入
            if (hca(v) > hca(u))
                hca(v) = std::min(hca(v), hca(u)); //更新hca[v]
            else //子女的hca不可能大于祖先
            { //*弹出当前BCC中（除关节点v外）的所有节点,v可能是其它连通域的成员，不能退栈
                cout << vertex(v)<<' ';//输出关节点
                while (S.top() != u)//*v,u在栈中不一定连续，要用u作为终止条件
                {
                    cout << vertex(S.top())<<' ';
                    S.pop();
                }
                cout << vertex(S.top()) << std::endl;
                S.pop();
            }
            break;
        case DISCOVERED: 
            type(v, u) = BACKWARD;
            hca(v) = std::min(hca(v), dTime(u)); //更新hca[v]
            break;
        default: //VISITED (有向图),与本算法无关
            type(v, u) = (dTime(v) < dTime(u)) ? FORWARD : CROSS;
            break;
        }
    status(v) = VISITED;
}

#undef hca
