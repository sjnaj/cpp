/*
 * @Author: fengsc
 * @Date: 2021-11-18 20:38:23
 * @LastEditTime: 2021-11-20 22:10:42
 */
#include <iostream>
#include <climits>
#include <vector>
#include <sstream>
#pragma once
using VStatus = enum { UNDISCOVERED,
                       DISCOVERED,
                       VISITED }; //顶点状态
using EType = enum { UNDETERMINED,
                     TREE,
                     CROSS,
                     FORWARD,
                     BACKWARD };   //边在遍历树中所属的类型
using DIRECT = enum { UNDIRECTED, //边状态，有向无向
                       DIRECTED
};
template <typename Tv, typename Te> //  顶点元素类型，边元素类型
class Graph
{
private:
    void reset()
    { //复位顶点和边
        for (int i = 0; i < n; i++)
        {
            status(i) = UNDISCOVERED;
            dTime(i) = fTime(i) = -1;
            parent(i) = -1;
            priority(i) = INT_MAX;
            for (int j = 0; j < n; j++)
                if (exists(i, j))
                    type(i, j) = UNDETERMINED;
        }
    }
    //void BFS(int, int &);

public:
    Graph() : n(0), e(0) {}
    int n; //顶点数
    int e; //边数
    //强制派生类所要实现的功能,可以改变的元素返回引用便于改变，否则返回值，例如度不能随意改变而值经常要赋
    virtual int insert(Tv const &) = 0;                 //插入顶点，返回编号
    virtual int loc(Tv const &) = 0;                    //寻找标签对应顶点的位置
    virtual Tv remove(int) = 0;                         //删除顶点及其关联边，返回该顶点信息
    virtual int remove(Tv const &) = 0;                 //根据标签删除顶点，返回其下标
    virtual Tv &vertex(int) = 0;                        //顶点v的数据（该顶点的确存在）
    virtual int inDegree(int) = 0;                      //顶点v的入度（该顶点的确存在）
    virtual int outDegree(int) = 0;                     //顶点v的出度（该顶点的确存在）
    virtual int firstNbr(int) = 0;                      //顶点v的首个邻接顶点
    virtual int nextNbr(int, int) = 0;                  //顶点v的（相对于顶点j的）下一邻接顶点
    virtual VStatus &status(int) = 0;                   //顶点v的状态
    virtual int &dTime(int) = 0;                        //顶点v的时间标签dTime
    virtual int &fTime(int) = 0;                        //顶点v的时间标签fTime
    virtual int &parent(int) = 0;                       //顶点v在遍历树中的父亲
    virtual int &priority(int) = 0;                     //顶点v在遍历树中的优先级数
    virtual bool exists(Tv const &) = 0;                //判断顶点是否存在
                                                        // 边：这里约定，无向边均统一转化为方向互逆的一对有向边，从而将无向图视作有向图的特例
    virtual bool exists(int, int) = 0;                  //边(v, u)是否存在
    virtual void insert(int, int, int, const Te &) = 0; //在顶点v和u之间插入权重为w的边e
    virtual void insert(Tv const &, Tv const &) = 0;    //通过顶点标签插入
    virtual void addEdge(const Tv &, const Tv &) = 0;   //通过顶点插入(允许多重边)
    virtual Te remove(int, int) = 0;                    //删除顶点v和u之间的边e，返回该边信息
    virtual Te remove(const Tv &, const Tv &) = 0;      //通过顶点标签删除
    virtual EType &type(int, int) = 0;                  //边(v, u)的类型
    virtual Te &edge(int, int) = 0;                     //边(v, u)的数据（该边的确存在）
    virtual int &weight(int, int) = 0;                  //边(v, u)的权重
};
