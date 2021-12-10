/*
 * @Author: fengsc
 * @Date: 2021-11-18 11:39:10
 * @LastEditTime: 2021-12-10 00:41:14
 */
#pragma once
#include "Graph.h"
#include "Matrix.h"
template <typename Tv = char, typename Te = char> //值类型都默认c
class GraphMatrix : public Graph<Tv, Te>
{
public:
    using Graph<Tv, Te>::n;
    template <typename Tx, typename Ty>
    friend class GraphAdjacencyList;

private:
    //都用指针作为元素节省空间
    vector<Vertex<Tv> *> V;
    vector<vector<Edge<Te> *>> E;

public:
    GraphMatrix() : Graph<Tv, Te>() {}
    GraphMatrix(int _n = 0, Direct dir = DIRECTED) : Graph<Tv, Te>(0, 0, dir) //预分配空间,注意n,e没有改变
    {
        V.reserve(_n);
        E.reserve(_n);
        for (int i = 0; i < _n; i++)
            E[i].reserve(_n);
    }
    //顶点元素须升序连续排列,默认有向图,顶点元素只允许整形或char,字符串类型需要另建数组维护
    GraphMatrix(const vector<Tv> &vertexVec, const vector<pair<Tv, Tv>> &relate, Direct dir = DIRECTED) : Graph<Tv, Te>(vertexVec.size(), relate.size(), dir), V(vertexVec.size(), nullptr),
                                                                                                          E(vertexVec.size(), vector<Edge<Te> *>(vertexVec.size(), nullptr))

    {
        Tv head = vertexVec[0]; //用于确定位置，用loc时间耗费较高
        for (int i = 0; i < n; i++)
            V[i] = new Vertex<Tv>(vertexVec[i]);
        for (int j = 0, v, w; j < this->e; j++)
            if ((v = relate[j].first - head) != (w = relate[j].second - head) && !E[v][w]) //消除自反关系和重复对
            {
                E[v][w] = new Edge<Te>;
                V[v]->outDegree++;
                V[w]->inDegree++;
                if (this->direct == UNDIRECTED)
                    E[w][v] = new Edge<Te>;
            }
    }
    //带权图
    GraphMatrix(const vector<Tv> &vertexVec, const vector<pair<Tv, Tv>> &relate, const vector<int> &weight, Direct dir = DIRECTED) : Graph<Tv, Te>(vertexVec.size(), relate.size(), dir), V(vertexVec.size(), nullptr),
                                                                                                                                     E(vertexVec.size(), vector<Edge<Te> *>(vertexVec.size(), nullptr))

    {
        Tv head = vertexVec[0]; //用于确定位置，用loc时间耗费较高
        for (int i = 0; i < n; i++)
            V[i] = new Vertex<Tv>(vertexVec[i]);
        for (int j = 0, v, w; j < this->e; j++)
            if ((v = relate[j].first - head) != (w = relate[j].second - head) && !E[v][w]) //消除自反关系和重复对
            {
                E[v][w] = new Edge<Te>(weight[j]);
                V[v]->outDegree++;
                V[w]->inDegree++;
                if (this->direct == UNDIRECTED)
                    E[w][v] = new Edge<Te>(weight[j]);
            }
    }
    //用二维数组初始化
    GraphMatrix(vector<vector<int>> m) : Graph<int, Te>(m.size()), V(m.size(), nullptr), E(m.size(), vector<Edge<Te> *>(m.size(), nullptr))
    {
        Matrix<int> M(m);
        for (int i = 0; i < n; i++)
            V[i] = new Vertex<int>(i);
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                if (M[i][j] && i != j)
                {
                    E[i][j] = new Edge<Te>(M[i][j]);
                    V[i]->outDegree++;
                    V[j]->inDegree++;
                    this->e++;
                }

    } //用二维vector生成

    ~GraphMatrix()
    {
        for (int i = 0; i < n; i++)
        {
            delete V[i];
            for (int j = 0; j < n; j++)
                delete E[i][j];
        }
    }
    virtual int loc(const Tv &v) override //没有找到返回-1
    {
        int i = n;
        while (--i > -1 && V[i]->data != v)
            ;
        return i;
    }
    virtual Tv &vertex(int i) override { return V[i]->data; }
    virtual int inDegree(int i) override { return V[i]->inDegree; }
    virtual int outDegree(int i) override { return V[i]->outDegree; }
    virtual int firstNbr(int i) override { return nextNbr(i, n); }
    virtual int nextNbr(int i, int j) override
    {
        while ((-1) < j && (!exists(i, --j))) //从j开始，倒序遍历，找不到返回-1,正序要多加一个return语句
            ;
        return j;
    }
    virtual void visit(int i) override { cout << vertex(i) << ' '; } //访问顶点
    virtual VStatus &status(int i) override { return V[i]->status; }
    virtual int &dTime(int i) override { return V[i]->dTime; }
    virtual int &fTime(int i) override { return V[i]->fTime; }
    virtual int &parent(int i) override { return V[i]->parent; }
    virtual int &priority(int i) override { return V[i]->priority; }
    virtual bool exists(int i) override { return i > -1 && i < n; }
    virtual int insert(const Tv &vertex) override;
    virtual void remove(int i) override;
    virtual bool exists(int i, int j) override
    {
        return i > -1 && i < n && j > -1 && j < n && E[i][j];
    }
    virtual EType &type(int i, int j) override { return E[i][j]->type; }
    virtual Te &edge(int i, int j) override { return E[i][j]->data; }
    virtual int &weight(int i, int j) override { return E[i][j]->weight; }
    virtual void insert(int i, int j, int weight = 1, const Te &edge = Te(1)) override;
    virtual Te remove(int i, int j) override; //删除后返回边信息，不存在返回Te(0)
    Matrix<bool> adjacentMatrix();            //01邻接矩阵
    Matrix<int> adjacentMatrixWithWeight();
    Matrix<bool> Warshall();           //沃舍尔算法求闭包
    Matrix<bool> reachabilityMatrix(); //可达性矩阵
    int minDistance(const Tv &v, const Tv &w);
    int LengthOfLoop(const Tv &v);                        //回路长度
    int numOfPath(const Tv &v, const Tv &w, int len = 0); //不标注长度即返回所有路径的总数
    static vector<pair<Tv, Tv>> getPair(const string &s)
    {
        return Matrix<bool>::getPair<Tv>(s);
    }
};
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::insert(const Tv &vertex)
{
    if (exists(loc(vertex)))
        return -1;
    for (int i = 0; i < n; i++)
        E[i].emplace_back(nullptr); //扩充一个列向量
    n++;                            //递增n，使新生成的行向量长度扩大1
    E.emplace_back((vector<Edge<Te> *>(n, nullptr)));
    V.emplace_back(new Vertex<Tv>(vertex));
    return n - 1; //返回结点标号
}
template <typename Tv, typename Te>
void GraphMatrix<Tv, Te>::remove(int i)
{
    if (!exists(i))
    {
        LOG("error loc to remove vertex at index %d\n", i);
        return;
    }

    for (int j = 0; j < n; j++) //删除出边(行),无向图双向的都删除
    {
        remove(i, j);
        if (this->direct == DIRECTED)
        {
            remove(j, i);
            E[j].erase(E[j].begin() + i); //!关键点
        }
    }
    E.erase(E.begin() + i); //删除空行
    n--;                    //递减n
    delete V[i];
    V.erase(V.begin() + i);
}
template <typename Tv, typename Te>
void GraphMatrix<Tv, Te>::insert(int i, int j, int weight, const Te &edge)
{
    if (exists(i, j) || !exists(i) || !exists(j) || i == j)
    {
        LOG("error loc to insert edge from index %d to %d\n", i, j);
        return;
    }
    E[i][j] = new Edge<Te>(weight);
    this->e++;
    V[j]->inDegree++;
    V[i]->outDegree++;
    if (this->direct == UNDIRECTED)
        E[j][i] = new Edge<Te>(weight);
}
template <typename Tv, typename Te>
Te GraphMatrix<Tv, Te>::remove(int i, int j)
{
    if (!exists(i, j))
        return Te(0);
    V[i]->outDegree--;
    V[j]->inDegree--;
    Te tmp = edge(i, j);
    delete E[i][j];
    E[i][j] = nullptr;
    this->e--;
    if (this->direct == UNDIRECTED)
    {
        delete E[j][i];
        E[j][i] = nullptr;
    }
    return tmp;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::adjacentMatrix() //01邻接矩阵
{
    Matrix<bool> ans(n, n);
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            if (E[i][j])
                ans[i][j] = true;
    return ans;
}
template <typename Tv, typename Te>
Matrix<int> GraphMatrix<Tv, Te>::adjacentMatrixWithWeight()
{
    Matrix<int> ans(n, n);
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            if (E[i][j])
                ans.matrix[i][j] = E[i][j]->weight; //权重作为邻接矩阵元素
    return ans;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::Warshall()
{
    Matrix<bool> ans = adjacentMatrix();
    for (int k = 0; k < n; k++)
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                ans[i][j] = ans[i][j] | (ans[i][k] & ans[k][j]); //注意vector<bool>没有重载各种=(*=,+=)
    return ans;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::reachabilityMatrix()
{
    /* Matrix<bool> boolMatrix = adjacentMatrix();//O(n^4)
        Matrix<bool> ans(n, n);
        for (int i = 0; i < n; i++) //原矩阵加自反性加1步到n-1步
            ans += boolMatrix.power(i);   //ans|=
        return ans;*/
    return Warshall() | Matrix<bool>(n); //O(n^3)
}
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::minDistance(const Tv &v, const Tv &w)
{
    int i = loc(v), j = loc(w), k;
    if (i == j)
        return 0;
    if (i < 0 || j < 0)
        return INT_MAX;
    if (exists(i, j))
        return 1;
    Matrix<bool> m = adjacentMatrix();
    for (k = 2; k < n; k++)
        if (m.power(k)[i][j] == true)
            break;
    return (k == n) ? INT_MAX : k;
}
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::LengthOfLoop(const Tv &v)
{
    int i = loc(v), k;
    if (i < 0)
        return INT_MAX;
    Matrix<bool> m = adjacentMatrix();
    for (k = 2; k <= n; k++) //2到n
        if (m.power(k)[i][i] == true)
            break;
    return (k == n + 1) ? INT_MAX : k;
}
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::numOfPath(const Tv &v, const Tv &w, int len)
{
    int i = loc(v), j = loc(w);
    if (i < 0 || j < 0)
        return 0;
    Matrix<int> m = adjacentMatrix().getInt();
    if (len)
        return m.power(len)[i][j];
    else
        for (int k = 1; k <= n; k++) //1到n
            len += m.power(k)[i][j];
    return len;
}
