/*
 * @Author: fengsc
 * @Date: 2021-11-02 19:58:31
 * @LastEditTime: 2021-11-06 20:07:11
 */
#pragma once
#include "BinaryTree.cpp"
using DataType = char;
struct HFNode
{
    DataType data;
    string code;
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
    double averageCodingLength; //平均编码长度
    HFTree() : elem(nullptr), leafNum(0), totalNum(0), root(0), averageCodingLength(0) {}
    ~HFTree() { delete[] elem; } //非travial情况，释放结点数组,注意[],元素对象中添加string类后如果不调用元素的析构函数就会报错
};
void select(HFTree &HF, int end, size_t &s1, size_t &s2); //找出权值最小和次小的树对应的下标
HFTree createHFTree(DataType val[], double w[], int n);   //构造哈夫曼树
BinTree convert(HFTree &HF, int root);
template void FreeTree(BinTree &T);
void PrintHFTree(HFTree &HF, int phl = 3); //placeholderlength,打印时的空位占位符长度，默认为3(数据和权值是1位)
void encode(HFTree &HT);                   //编码并计算平均编码长度
void PrintCode(HFTree &HF);
DataType decode(HFTree &HF, string code);//解码
