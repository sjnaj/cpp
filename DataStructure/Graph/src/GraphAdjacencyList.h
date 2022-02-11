/*
 * @Author: fengsc
 * @Date: 2021-12-01 12:13:03
 * @LastEditTime: 2021-12-11 08:20:59
 */
#include "GraphMatrix.h"//需要使用GraphMatrix里的矩阵输出函数，同时包含了Graph.h
template <typename Te>
struct ENode
{
    Edge<Te> edge;
    ENode *link;
    int desk; //所指向顶点的位置
    ENode(int _desk = -1, ENode *_link = nullptr, int w = 1, const Te &e = (Te)1) : edge(w, e), desk(_desk), link(_link) {}
};
template <typename Tv, typename Te>
struct VNode //!使用的时候注意有两个模板参数
{
    Vertex<Tv> vertex;
    ENode<Te> *adj;
    VNode(const Tv &v = (Tv)0, ENode<Te> *_adj = nullptr) : vertex(v), adj(_adj) {}
};
template <typename Tv = char, typename Te = char>
class ALGraph : public Graph<Tv, Te>
{
private:
    vector<VNode<Tv, Te>> VList;
    static ENode<Te> *nPtr; //用于返回空引用参数

public:
    using Graph<Tv, Te>::n;
    using Graph<Tv, Te>::e;
    using Graph<Tv, Te>::direct;
    ALGraph(int n = 0, Direct dir = DIRECTED) : Graph<Tv, Te>(0, 0, dir) { VList.reserve(n); }
    //*关系序列中各顶点须连续升序,注意不要遗漏没有出边的点
    ALGraph(const vector<vector<Tv>> &relateList, Direct dir = DIRECTED) : Graph<Tv, Te>(relateList.size(), 0, dir), VList(relateList.size())
    {
        Tv head = relateList[0][0];
        for (int i = 0; i < n; i++) //头插法,注意更新边数
        {
            VList[i].vertex = Vertex<Tv>(relateList[i][0]);
            for (int j = 1; j < relateList[i].size(); j++, e++, VList[i].vertex.outDegree++, VList[i].vertex.inDegree++)
                VList[i].adj = new ENode<Te>(relateList[i][j] - head, VList[i].adj);
        }
    }
    //有权图
    ALGraph(const vector<Tv> &vertexVec, const vector<pair<Tv, Tv>> &relate, const vector<int> &weight, Direct dir = DIRECTED) : Graph<Tv, Te>(vertexVec.size(), relate.size(), dir), VList(vertexVec.size())
    {
        for (int i = 0; i < n; i++)
            VList[i].vertex = Vertex<Tv>(vertexVec[i]);
        ENode<Te> *p, *q;
        Tv head = vertexVec[0];
        for (int j = 0, v, w; j < e; j++)
        {
            v = relate[j].first - head;
            w = relate[j].second - head;
            if (v != w) //去除自反
            {
                p = VList[v].adj;
                while (p != NULL && p->desk != w)
                    p = p->link;
                if (!p) //去除重复
                {
                    VList[v].adj = new ENode<Te>(w, VList[v].adj, weight[j]);
                    VList[v].vertex.outDegree++;
                    VList[v].vertex.inDegree++;
                    if (direct == UNDIRECTED) //无向图建立对称顶点
                        VList[w].adj = new ENode<Te>(v, VList[w].adj, weight[j]);
                }
            }
        }
    }
    //无权图
    ALGraph(const vector<Tv> &vertexVec, const vector<pair<Tv, Tv>> &relate, Direct dir = DIRECTED) : Graph<Tv, Te>(vertexVec.size(), relate.size(), dir), VList(vertexVec.size())
    {
        for (int i = 0; i < n; i++)
            VList[i].vertex = Vertex<Tv>(vertexVec[i]);
        ENode<Te> *p, *q;
        Tv head = vertexVec[0];
        for (int j = 0, v, w; j < e; j++)
        {
            v = relate[j].first - head;
            w = relate[j].second - head;
            if (v != w) //去除自反
            {
                p = VList[v].adj;
                while (p != NULL && p->desk != w)
                    p = p->link;
                if (!p) //去除重复
                {
                    VList[v].adj = new ENode<Te>(w, VList[v].adj);
                    VList[v].vertex.outDegree++;
                    VList[v].vertex.inDegree++;
                    if (direct == UNDIRECTED) //无向图建立对称顶点
                        VList[w].adj = new ENode<Te>(v, VList[w].adj);
                }
            }
        }
    }
    ~ALGraph()
    {
        ENode<Te> *p, *q;
        for (int i = 0; i < n; i++)
        {
            p = VList[i].adj;
            while (p)
            {
                q = p->link;
                delete p;
                p = q;
            }
        }
    }
    void clear() //清空，剩余VList的空间
    {
        ENode<Te> *p, *q;
        for (int i = 0; i < n; i++)
        {
            p = VList[i].adj;
            while (p)
            {
                q = p->link;
                delete p;
                p = q;
            }
        }
        VList.clear();
        this->n = this->e = 0;
    }

    static vector<pair<Tv, Tv>> getPair(const string &s) //(1,2)(2,3)(3,1)
    {
        return GraphMatrix<Tv, Te>::getPair(s);
    }
    static vector<vector<Tv>> getRelate(const string &s) //(1,2,3,4)(3,4,5,6)(2,3,1,4)
    {
        std::stringstream ss(s), strs;
        string str;
        Tv x;
        vector<vector<Tv>> relates;
        vector<Tv> relate;
        char c;                            //占位
        while (std::getline(ss, str, ')')) //读取某一顶点及其所有出边的数据
        {
            strs << str;
            while (strs >> c >> x)
                relate.push_back(x);
            relates.push_back(relate);
            strs.clear(); //清空strs和relate
            relate.clear();
        }
        return relates;
    }
    virtual int loc(const Tv &v) override
    {
        int i = n;
        while (--i > -1 && VList[i].vertex.data != v)
            ;
        return i;
    }
    ENode<Te> *&_edge(int i, int j) //返回边元素的指针的引用,便于删除结点
    {
        if (exists(i))
        {
            ENode<Te> **p = &VList[i].adj, *q;
            while ((q = *p) && q->desk != j)
                p = &q->link;
            if (q)
                return *p;
        }
        return nPtr; //静态空指针
    }
    virtual Te &edge(int i, int j) override
    {
        return _edge(i, j)->edge.data;
    }
    virtual int firstNbr(int i) override { return VList[i].adj ? VList[i].adj->desk : -1; }
    virtual int nextNbr(int i, int j) override
    {
        ENode<Te> *p = _edge(i, j);
        return p && p->link ? p->link->desk : -1;
    }
    virtual Tv &vertex(int i) override { return VList[i].vertex.data; }
    virtual int inDegree(int i) override { return VList[i].vertex.inDegree; }
    virtual int outDegree(int i) override { return VList[i].vertex.outDegree; }
    virtual void visit(int i) override { cout << vertex(i) << ' '; } //访问顶点
    virtual VStatus &status(int i) override { return VList[i].vertex.status; }
    virtual int &dTime(int i) override { return VList[i].vertex.dTime; }
    virtual int &fTime(int i) override { return VList[i].vertex.fTime; }
    virtual int &parent(int i) override { return VList[i].vertex.parent; }
    virtual int &priority(int i) override { return VList[i].vertex.priority; }
    virtual bool exists(int i) override { return i > -1 && i < n; }
    virtual int insert(const Tv &vertex) override
    {
        if (exists(loc(vertex)))
            return -1;
        VList.push_back(VNode<Tv, Te>(vertex));
        n++;
        return n - 1;
    }
    virtual void remove(int v) override //返回顶点i的值，不存在返回(Tv)0
    {
        if (!exists(v))
        {
            LOG("error loc to insert vertex at index %d\n", v);
            return;
        }

        for (int i = 0; i < n; i++)
        {
            remove(i, v);
            if (direct = DIRECTED) //有向
                remove(v, i);
        }
        VList.erase(VList.begin() + v);
        n--;
        ENode<Te> *p;
        for (int i = 0; i < n; i++)
        {
            p = VList[i].adj;
            while (p) //大于v的desk减一
            {
                if (p->desk > v)
                    p->desk--;
                p = p->link;
            }
        }
    }
    virtual bool exists(int i, int j) override
    {
        return (bool)_edge(i, j);
    }
    virtual EType &type(int i, int j) override { return _edge(i, j)->edge.type; }
    virtual int &weight(int i, int j) override { return _edge(i, j)->edge.weight; }
    virtual void insert(int i, int j, int weight = 1, const Te &edge = Te(1)) override
    {
        if (exists(i, j) || !exists(i) || !exists(j) || i == j)
        {
            LOG("error loc to insert edge from index %d to %d\n", i, j);
            return;
        }
        VList[i].adj = new ENode<Te>(j, VList[i].adj, weight);
        VList[i].vertex.outDegree++;
        VList[j].vertex.inDegree++;
        e++;
        if (direct == UNDIRECTED)
            VList[j].adj = new ENode<Te>(i, VList[j].adj, weight);
    }
    virtual Te remove(int i, int j) override
    {
        ENode<Te> *&p = _edge(i, j), *q;
        Te tmp = 0;
        if (p)
        {
            tmp = p->edge.data;
            q = p->link;
            delete p;
            p = q;
        }
        return tmp;
    }
    Matrix<bool> adjacentMatrix() //01邻接矩阵
    {
        Matrix<bool> ans(n, n);
        ENode<Te> *p;
        for (int i = 0; i < n; i++)
        {
            p = VList[i].adj;
            while (p)
            {
                ans[i][p->desk] = true;
                p = p->link;
            }
        }
        return ans;
    }
    Matrix<int> adjacentMatrixWithWeight()
    {
        Matrix<int> ans(n, n);
        ENode<Te> *p;
        for (int i = 0; i < n; i++)
        {
            p = VList[i].adj;
            while (p)
            {
                ans[i][p->desk] = weight(i, p->desk);
                p = p->link;
            }
        }
        return ans;
    }
};
template <typename Tv, typename Te>
ENode<Te> *ALGraph<Tv, Te>::nPtr = nullptr;