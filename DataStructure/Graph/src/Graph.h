/*
 * @Author: fengsc
 * @Date: 2021-11-18 20:38:23
 * @LastEditTime: 2021-12-11 08:19:15
 */
#pragma once
#include <iostream>
#include <climits>
#include <vector>
#include <sstream>
#include <queue>
#include <stack>
#include <algorithm>
#ifdef _DEBUG //DEBUG模式下插删失败提示(针对返回为void的操作函数)
#define LOG(format, ...) fprintf(stderr, "\033[1;35m  LOG(%s:%s:%d):\t\033[32m" format, __FILE__, __func__, __LINE__, ##__VA_ARGS__)
#else
#define LOG(format, ...)
#endif // _DEBUG

using std::cout;
using std::stack;
using std::string;
using std::vector;
enum VStatus
{
    UNDISCOVERED,
    DISCOVERED, //被探测到
    VISITED     //访问完毕
};              //顶点状态
enum EType
{
    UNDETERMINED,
    TREE,    //支撑支
    CROSS,   //表亲之间
    FORWARD, //祖先指向后代
    BACKWARD //后代指向祖先
};           //边在遍历树中所属的类型
enum Direct
{
    UNDIRECTED, //边状态，有向无向
    DIRECTED
};
template <typename Tv>
struct Vertex
{
    Tv data;
    int inDegree, outDegree;
    VStatus status;
    int dTime;
    int fTime;
    int parent;
    int priority;
    //(TV)0:拓展可初始化对象范围，使之不限于基本类型
    Vertex(const Tv &d = (Tv)0) : data(d), inDegree(0), outDegree(0), status(UNDISCOVERED),
                                  dTime(-1), fTime(-1), parent(-1), priority(INT_MAX) {}
};
template <typename Te>
struct Edge
{
    Te data;
    int weight;
    EType type;
    Edge(int w=1,const Te &e = (Te)1) : data(e), weight(w), type(UNDETERMINED) {}
};
template <typename Tv, typename Te> //  顶点元素类型，边元素类型
class Graph
{
public:
    void reset()
    { //复位顶点和边
        for (int i = 0; i < n; i++)
        {
            status(i) = UNDISCOVERED;
            dTime(i) = fTime(i) = -1; //发现时间和访问完毕时间
            parent(i) = -1;
            priority(i) = INT_MAX; //初始优先级最低，数值最高(距离越远的优先级越低)
            for (int j = 0; j < n; j++)
                if (exists(i, j))
                    type(i, j) = UNDETERMINED;
        }
    }
    template <class T> //参数T用于获取原图的类型进而构造其反向图，直接逆转原图更简便但会修改原图
    T *getRevese()
    {
        T *G = new T;
        for (int i = 0; i < this->n; i++)
            G->insert(vertex(i));
        for (int j = 0; j < this->n; j++)
            for (int k = firstNbr(j); k > -1; k = nextNbr(j, k))
                G->insert(k, j);
        return G;
    }
    Graph() : n(0), e(0), direct(DIRECTED) {}
    Graph(int _n = 0, int _e = 0, Direct dir = DIRECTED) : n(_n), e(_e), direct(dir) {}
    int n;         //顶点数
    int e;         //边数
    Direct direct; //有向无向
        //虚函数为强制派生类所要实现的功能,可以改变的元素返回引用便于改变，否则返回值
    virtual int insert(Tv const &) = 0; //插入顶点，返回编号
    virtual int loc(Tv const &) = 0;    //寻找标签对应顶点的位置,用于通过标签值传入位置参数
    virtual void remove(int) = 0;       //删除顶点及其关联边
    virtual Tv &vertex(int) = 0;        //顶点v的数据（该顶点的确存在）
    virtual int inDegree(int) = 0;      //顶点v的入度（该顶点的确存在）
    virtual int outDegree(int) = 0;     //顶点v的出度（该顶点的确存在）
    //无向图的度等于入度加出度
    virtual int firstNbr(int) = 0;                      //顶点v的首个邻接顶点
    virtual int nextNbr(int, int) = 0;                  //顶点v的（相对于顶点j的）下一邻接顶点
    virtual VStatus &status(int) = 0;                   //顶点v的状态
    virtual int &dTime(int) = 0;                        //顶点v的时间标签dTime
    virtual int &fTime(int) = 0;                        //顶点v的时间标签fTime
    virtual int &parent(int) = 0;                       //顶点v在遍历树中的父亲
    virtual int &priority(int) = 0;                     //顶点v在遍历树中的优先级数
    virtual bool exists(int) = 0;                       //判断顶点是否存在
                                                        // 边：这里约定，无向边均统一转化为方向互逆的一对有向边，从而将无向图视作有向图的特例
    virtual bool exists(int, int) = 0;                  //边(v, u)是否存在
    virtual void insert(int, int, int, const Te &) = 0; //在顶点v和u之间插入权重为w的边e
    virtual Te remove(int, int) = 0;                    //删除顶点v和u之间的边e，返回该边信息，不存在返回(Te)0
    virtual EType &type(int, int) = 0;                  //边(v, u)的类型
    virtual Te &edge(int, int) = 0;                     //边(v, u)的数据（该边的确存在）
    virtual int &weight(int, int) = 0;                  //边(v, u)的权重
    virtual void visit(int) = 0;                        //访问顶点
    //遍历相关
    void bfs(int v, vector<Tv> &);      //全图的广度优先搜索,引用vector存储遍历顶点序列(vector<Tv>)
    void BFS(int, int &, vector<Tv> &); //单个连通域的广度优先搜索算法
    vector<vector<Tv>> getPathTo(int);  //返回能到达某个顶点的最短路径，基于BFS
    void dfs(int, vector<Tv> &);        //全图的深度优先搜索
    void DFS(int, int &, vector<Tv> &); //单连通域的深度优先搜索
    bool isDirectRelative(int v, int w) //判断两个顶点是否是直系亲属，需要先对图进行DFS搜索
    {
        return (dTime(w) >= dTime(v) && fTime(w) <= fTime(v)) || (dTime(w) <= dTime(v) && fTime(w) >= fTime(v));
    }
    void TopologicalSort(vector<Tv> &order) //传入dfs排序后的序列(或是顶点标签值序列，都要确保先进行dfs），不能处理带环的图,可依据如果在对某个顶点进行DFS的过程中已被探测到则证明有环来改进
    {
        std::sort(order.begin(), order.end(), [&](Tv a, Tv b)
                  { return fTime(loc(a)) > fTime(loc(b)); }); //按fTime逆序排列
    }
    /*bcc和scc基于Tarjan算法,scc2基于Kosaraju算法*/
    void bcc();                         //输出全部的双连通分量
    void BCC(int, int &, stack<int> &); //单个双连通分量

    void scc();                         //求有向图的强连通分量
    void SCC(int, int &, stack<int> &); //单个强连通分量
    template <class T>
    void scc2();

    template <typename PU> //优先级搜索
    void pfs(int, PU);
    template <typename PU>
    void PFS(int, PU);
    template <typename PU>
    void PFS(int, PU, Graph<Tv, Te> &); //适配需要生成对象的最小生成树算法

    //生成最小生成树(mst)(是否生成实际对象可选),通过原图或生成树的顶点沿parent向上遍历都可得到路径
    void dijkstra(int s);
    void prim(int s);
    //生成树需预先分配空间
    void dijkstra(int s, Graph<Tv, Te> &);
    void prim(int s, Graph<Tv, Te> &);
    vector<int> getPath(int s) //通过parent得到某个顶点到根的路径(顶点下标表示),注意是从终点开始，输出时可能需要倒序
    {
        vector<int> path;
        if (parent(s) != -1)
            for (int j = s; j != -1; j = parent(j))
                path.emplace_back(j);
        return path;
    }
    vector<vector<int>> getPaths() //通过parent得到各顶点到根的路径
    {
        vector<vector<int>> paths;
        paths.reserve(this->n - 1);
        vector<int> path;
        for (int i = 0; i < this->n; i++)
        {
            path = getPath(i);
            if (!path.empty())
                paths.emplace_back(path);
        }
        return paths;
    }
};
#include "GraphBfs.h"
#include "GraphDfs.h"
#include "GraphBcc.h"
#include "GraphScc.h"
#include "GraphDijkstra.h"
#include "GraphPfs.h"
#include "GraphPrim.h"
