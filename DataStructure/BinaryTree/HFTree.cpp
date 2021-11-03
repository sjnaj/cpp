/*
 * @Author: fengsc
 * @Date: 2021-11-02 22:32:41
 * @LastEditTime: 2021-11-03 13:00:51
 */
/*
 * @Author: fengsc
 * @Date: 2021-11-02 22:32:41
 * @LastEditTime: 2021-11-02 22:32:41
 */
#ifndef _HFTree_H
#include "HFTree.h"
#endif // !_HFTree_H
void select1(HFTree &HF, int end, size_t &s1, size_t &s2)
{
    double min1 = DBL_MAX, min2 = DBL_MAX;
    s1 = s2 = 0;
    for (int i = 0; i < end; i++)
    {
        if (HF.elem[i].parent == -1) //不是子树
            if (HF.elem[i].weight < min1)
            {
                min2 = min1;
                s2 = s1;
                min1 = HF.elem[i].weight;
                s1 = i;
            }
            else if (HF.elem[i].weight < min2)
            {
                min2 = HF.elem[i].weight;
                s2 = i;
            }
    }
}
HFTree createHFTree(DataType val[], double w[], int n)
{
    HFTree *HFp = new HFTree; //堆内存建立
    HFTree &HF = *HFp;        //设立引用用于返回，等于的话相当于其解引用的拷贝，不能影响原内存
    HF.leafNum = n;
    HF.totalNum = 2 * n - 1;
    HF.root = 2 * n - 2;
    HF.elem = new HFNode[HF.totalNum];
    for (int i = 0; i < HF.totalNum; i++) //初始化权值和初值
    {
        if (i < HF.leafNum)
            HF.elem[i].weight = w[i];
        HF.elem[i].data = val[i];
    }
    size_t s1, s2;
    for (int i = HF.leafNum; i < HF.totalNum; i++)
    {
        select1(HF, i, s1, s2); //查找最小的两个，在当前位置之前的非子树中
        HF.elem[i].lchild = s1; //设定左比右小，唯一确定
        HF.elem[i].rchild = s2;
        HF.elem[s1].parent = HF.elem[s2].parent = i;
        HF.elem[i].weight = HF.elem[s1].weight + HF.elem[s2].weight;
    }
    return *HFp;
}
void PrintHFTree(HFTree &HF, int phl)
{
    BinTree T = convert(HF, HF.root);
    queue<BinTree> Q;
    BinTree p;
    int size;
    Q.push(T);
    int gap = pow(2, Height(T));
    while (!Q.empty())
    {
        PrintBlank(gap - 3); //行首空格
        size = Q.size();
        while (size--)
        {
            p = Q.front();
            Q.pop();
            if (p)
            {
                cout << p->data << '(' << p->weight << ')';
                Q.push(p->lchild);
                Q.push(p->rchild);
            }
            else
                PrintBlank(phl); //占位，'('占半位
            PrintBlank(2 * gap - 3);
        }
        gap /= 2;
        cout << endl; //分层
    }
}
