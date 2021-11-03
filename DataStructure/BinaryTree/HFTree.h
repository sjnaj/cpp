/*
 * @Author: fengsc
 * @Date: 2021-11-02 19:58:31
 * @LastEditTime: 2021-11-03 16:02:53
 */
#pragma once
#include <iostream>
#include <climits>
#include <cfloat>
#include "BinaryTree.cpp"
using DataType = char;
struct HFNode
{
    DataType data;
    double weight;
    int parent, lchild, rchild;
    HFNode(int w = -1, DataType val = 0, int par = -1, int lc = -1, int rc = -1) : weight(w), data(val), parent(par), lchild(lc), rchild(rc)
    {
    }
};
struct HFTree
{
    HFNode *elem;
    int leafNum, totalNum, root;
    ~HFTree() { delete elem; }//释放结点数组
};
void select1(HFTree &HF, int end, size_t &s1, size_t &s2); //找出权值最小和次小的树对应的下标
HFTree createHFTree(DataType val[], double w[], int n);//构造哈夫曼树
BinTree convert(HFTree &HF,int root);
void PrintHFTree(HFTree &HF,int phl=3);//placeholderlength,打印时的空位占位符长度，默认为3(数据和权值是1位)

