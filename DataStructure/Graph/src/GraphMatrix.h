/*
 * @Author: fengsc
 * @Date: 2021-11-18 11:39:10
 * @LastEditTime: 2021-11-20 23:14:18
 */
#pragma once
#include "Graph.h"
#include "Matrix.h"
#include "/home/fengsc/Desktop/cpp/CppTest/class/src/timeCount.h"
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
    Edge(const Te &e = (Te)1, int w = 1) : data(e), weight(w), type(UNDETERMINED) {}
};
template <typename Tv = char, typename Te = char> //值类型都默认c
class GraphMatrix : public Graph<Tv, Te>
{
private:
    //都用指针作为元素节省空间
    vector<Vertex<Tv> *> V;
    vector<vector<Edge<Te> *>> E;
    DIRECT direct;

public:
    GraphMatrix(DIRECT dir = DIRECTED) : Graph<Tv, Te>(), direct(dir) {}
    //顶点元素必须连续，关系对不能重复,默认有向图
    GraphMatrix(const vector<Tv> &vertexVec, const vector<pair<Tv, Tv>> &relate, DIRECT dir = DIRECTED) : V(vertexVec.size(), nullptr), direct(dir),
                                                                                                          E(relate.size(), vector<Edge<Te> *>(relate.size(), nullptr))
    {
        this->n = vertexVec.size();
        this->e = relate.size();
        for (int i = 0; i < this->n; i++)
            V[i] = new Vertex<Tv>(vertexVec[i]);
            for (int j = 0, v, w; j < this->e; j++)                                                
                if ((v = relate[j].first - vertexVec[0]) != (w = relate[j].second - vertexVec[0])) //消除自反关系
                {
                    E[v][w] = new Edge<Te>;
                    if (direct == UNDIRECTED)
                        E[w][v] = new Edge<Te>;
                }
    }
    ~GraphMatrix()
    {
        for (int i = 0; i < this->n; i++)
        {
            delete V[i];
            for (int j = 0; j < this->n; j++)
                delete E[i][j];
        }
    }
    virtual int loc(const Tv &v) override //没有找到返回-1
    {
        int i = this->n;
        while (V[i - 1]->data != v && --i)
            ;
        return i - 1;
    }
    virtual Tv &vertex(int i) override { return V[i]->data; }
    //无向图的出度即入度即度
    virtual int inDegree(int i) override { return V[i]->inDegree; }
    virtual int outDegree(int i) override { return V[i]->outDegree; }
    virtual int firstNbr(int i) override { return nextNbr(i, this->n); }
    virtual int nextNbr(int i, int j) override
    {
        while ((-1) < j && (!exists(i, --j))) //倒序遍历，找不到返回-1,正序要多加一个return语句
            ;
        return j;
    }
    virtual VStatus &status(int i) override { return V[i]->status; }
    virtual int &dTime(int i) override { return V[i]->dTime; }
    virtual int &fTime(int i) override { return V[i]->fTime; }
    virtual int &parent(int i) override { return V[i]->parent; }
    virtual int &priority(int i) override { return V[i]->priority; }
    virtual bool exists(const Tv &v) override { return loc(v) > -1 && loc(v) < this->n; }
    virtual int insert(const Tv &vertex) override;
    virtual Tv remove(int i) override;       //返回顶点i的值，不存在返回(Tv)0
    virtual int remove(const Tv &v) override //返回顶点下标的值
    {
        if (!exists(v))
            return -1;
        int l = loc(v);
        remove(l);
        return l;
    }
    virtual bool exists(int i, int j) override
    {
        return i > -1 && i < this->n && j > -1 && j < this->n && E[i][j];
    }
    virtual EType &type(int i, int j) override { return E[i][j]->type; }
    virtual Te &edge(int i, int j) override { return E[i][j]->data; }
    virtual int &weight(int i, int j) override { return E[i][j]->weight; }
    virtual void addEdge(const Tv &v, const Tv &w) override; //可添加多重边
    virtual void insert(int i, int j, int weight = 1, const Te &edge = Te(1)) override;
    virtual void insert(const Tv &v, const Tv &w) override //添加普通的邻接关系,通过顶点的标签
    {
        insert(loc(v), loc(w));
    }
    virtual Te remove(int i, int j) override;
    virtual Te remove(const Tv &v, const Tv &w) override
    {
        return remove(loc(v), loc(w));
    }
    Matrix<bool> adjacentMatrix(); //01邻接矩阵
    Matrix<int> adjacentMatrixWithWeight();
    Matrix<bool> Warshall();           //沃舍尔算法求闭包
    Matrix<bool> reachabilityMatrix(); //可达性矩阵
    int minDistance(const Tv &v, const Tv &w);
    int LengthOfLoop(const Tv &v);                        //回路长度
    int sumOfPath(const Tv &v, const Tv &w, int len = 0); //不标注长度即返回所有路径的总数
    static vector<pair<Tv, Tv>> getPair(const string &s)
    {
        return Matrix<bool>::getPair<Tv>(s);
    }
};
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::insert(const Tv &vertex)
{
    if (exists(vertex))
        return -1;
    for (int i = 0; i < this->n; i++)
        E[i].emplace_back(nullptr); //扩充一个列向量
    this->n++;                      //递增n，使新生成的行向量长度扩大1
    E.emplace_back((vector<Edge<Te> *>(this->n, nullptr)));
    V.emplace_back(new Vertex<Tv>(vertex));
    return V.size() - 1; //返回结点标号
}
template <typename Tv, typename Te>
Tv GraphMatrix<Tv, Te>::remove(int i)
{
    if (i < 0 || i > this->n - 1)
    {
        std::cout << "the vertex is not exist" << std::endl;
        return (Tv)0;
    }
    for (int j = 0; j < this->n; j++) //删除出边(行)
        if (exists(i, j))
        {
            delete E[i][j];
            V[j]->inDegree--;
            if (direct == UNDIRECTED)
                V[j]->outDegree--;
            this->e--;
        }
    E.erase(E.begin() + i);
    this->n--;                        //递减n，防止下面的循环越界
    for (int j = 0; j < this->n; j++) //删除入边(列)
    {
        if (exists(j, i))
        {
            delete E[j][i];
            V[j]->outDegree--;
            if (direct == UNDIRECTED)
                V[j]->inDegree--;
            this->e--;
        }
        E[j].erase(E[j].begin() + i);
    }
    Tv tmp = vertex(i);
    delete V[i];
    V.erase(V.begin() + i);
    return tmp;
}
template <typename Tv, typename Te>
void GraphMatrix<Tv, Te>::addEdge(const Tv &v, const Tv &w)
{
    int i = loc(v), j = loc(w);
    if (i < 0 || j < 0) //注意限制位置
    {
        std::cout << "error loc to insert" << std::endl;
        return;
    }
    if (exists(i, j))
        E[i][j]->weight++;
    else
        E[i][j] = new Edge<Te>;
    this->e++;
    V[j]->inDegree++;
    V[i]->outDegree++;
}
template <typename Tv, typename Te>
void GraphMatrix<Tv, Te>::insert(int i, int j, int weight, const Te &edge)
{
    if (exists(i, j) || i < 0 || i > this->n - 1 || j < 0 || j > this->n - 1)
        return;
    E[i][j] = new Edge<Te>(edge, weight);
    this->e++;
    V[j]->inDegree++;
    V[i]->outDegree++;
    if (direct == UNDIRECTED)
    {
        E[j][i] = new Edge<Te>(edge, weight);
        V[i]->inDegree++;
        V[j]->outDegree++;
    }
}
template <typename Tv, typename Te>
Te GraphMatrix<Tv, Te>::remove(int i, int j)
{
    if (!exists(i, j))
    {
        std::cout << " the edge is not exists" << std::endl;
        return Te(0);
    }
    V[i]->outDegree--;
    V[j]->inDegree--;
    Te tmp = edge(i, j);
    delete E[i][j];
    E[i][j] = nullptr;
    if (direct == UNDIRECTED)
    {
        V[j]->outDegree--;
        V[i]->inDegree--;
        delete E[j][i];
        E[j][i] = nullptr;
    }
    return tmp;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::adjacentMatrix() //01邻接矩阵
{
    Matrix<bool> ans(this->n, this->n);
    for (int i = 0; i < this->n; i++)
        for (int j = 0; j < this->n; j++)
            if (E[i][j])
                ans.matrix[i][j] = true;
    return ans;
}
template <typename Tv, typename Te>
Matrix<int> GraphMatrix<Tv, Te>::adjacentMatrixWithWeight()
{
    Matrix<int> ans(this->n, this->n);
    for (int i = 0; i < this->n; i++)
        for (int j = 0; j < this->n; j++)
            if (E[i][j])
                ans.matrix[i][j] = E[i][j]->weight; //权重作为邻接矩阵元素，在这里等于边数
    return ans;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::Warshall()
{
    Matrix<bool> ans = adjacentMatrix();
    for (int k = 0; k < this->n; k++)
        for (int i = 0; i < this->n; i++)
            for (int j = 0; j < this->n; j++)
                ans[i][j] = ans[i][j] | (ans[i][k] & ans[k][j]); //注意vector<bool>没有重载各种=(*=,+=)
    return ans;
}
template <typename Tv, typename Te>
Matrix<bool> GraphMatrix<Tv, Te>::reachabilityMatrix()
{
    /* Matrix<bool> boolMatrix = adjacentMatrix();//O(n^4)
        Matrix<bool> ans(this->n, this->n);
        for (int i = 0; i < this->n; i++) //原矩阵加自反性加1步到n-1步
            ans += boolMatrix.power(i);   //ans|=
        return ans;*/
    return Warshall() | Matrix<bool>(this->n); //O(n^3)
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
    for (k = 2; k < this->n; k++)
        if (m.power(k)[i][j] == true)
            break;
    return (k == this->n) ? INT_MAX : k;
}
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::LengthOfLoop(const Tv &v)
{
    int i = loc(v), k;
    if (i < 0)
        return INT_MAX;
    Matrix<bool> m = adjacentMatrix();
    for (k = 2; k <= this->n; k++) //2到n
        if (m.power(k)[i][i] == true)
            break;
    return (k == this->n + 1) ? INT_MAX : k;
}
template <typename Tv, typename Te>
int GraphMatrix<Tv, Te>::sumOfPath(const Tv &v, const Tv &w, int len)
{
    int i = loc(v), j = loc(w);
    if (i < 0 || j < 0)
        return 0;
    Matrix<int> m = adjacentMatrix().getInt();
    if (len)
        return m.power(len)[i][j];
    else
        for (int k = 1; k <= this->n; k++) //1到n
            len += m.power(k)[i][j];
    return len;
}
