/*
 * @Author: fengsc
 * @Date: 2021-11-02 22:32:41
 * @LastEditTime: 2021-12-28 23:30:29
 */
/*
 * @Author: fengsc
 * @Date: 2021-11-02 22:32:41
 * @LastEditTime: 2021-11-02 22:32:41
 */
#ifndef _HFTree_H
#include "HFTree.h"
#endif // !_HFTree_H
void select(HFTree &HF, int end, size_t &s1, size_t &s2)
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
        select(HF, i, s1, s2);  //查找最小的两个，在当前位置之前的非子树中
        HF.elem[i].lchild = s1; //设定左比右小且优先链接左子树，唯一确定
        HF.elem[i].rchild = s2;
        HF.elem[s1].parent = HF.elem[s2].parent = i;
        HF.elem[i].weight = HF.elem[s1].weight + HF.elem[s2].weight;
    }
    return *HFp;
}
BinTree convert(HFTree &HF, int index)
{
    BinTree root = new TreeNode(HF.elem[index].data);
    root->weight = HF.elem[index].weight;
    int lchild = HF.elem[index].lchild, rchild = HF.elem[index].rchild;
    if (lchild != -1)
        root->lchild = convert(HF, lchild);
    if (rchild != -1)
        root->rchild = convert(HF, rchild);
    return root;
}
void printHFTree(HFTree &HF, int phl)
{
    BinTree T = convert(HF, HF.root);
    queue<BinTree> Q;
    BinTree p;
    int size;
    Q.push(T);
    int gap = pow(2, Height(T));
    bool hasNode=true;
    while (1)
    {
        if(gap-3>0)
        cout<<string(' ',gap-3);
        size = Q.size();
        if (hasNode)
            hasNode = false;
        else
            break;
        while (size--)
        {
            p = Q.front();
            Q.pop();
            if (p)
            {
                hasNode = true;
                cout << p->data << '(' << p->weight << ')';
                Q.push(p->lchild);
                Q.push(p->rchild);
            }
            else
            {
                cout<<string(phl,' ');
                Q.push(nullptr);
                Q.push(nullptr);
            }
            if(2*gap-3>0)
           cout<<string(2*gap-3,' ');
        }
        gap /= 2;
        cout << endl; //分层
    }
}
void encode(HFTree &HF)
{
    string bits;
    for (int i = 0; i < HF.leafNum; i++)
    {
        bits = "";
        for (int cur = i, prt = HF.elem[cur].parent; prt != -1; cur = prt, prt = HF.elem[prt].parent)
        {
            if (HF.elem[prt].lchild == cur)
                bits = '0' + bits; //由底向上，在前面添加
            else
                bits = '1' + bits;
        }
        HF.elem[i].code = bits;
    }
    for (int i = 0; i < HF.leafNum; i++)
        HF.averageCodingLength += HF.elem[i].code.length() * HF.elem[i].weight;
}
void printCode(HFTree &HF)
{
    for (int i = 0; i < HF.leafNum; i++)
        cout << HF.elem[i].data << ':' << HF.elem[i].code << endl;
    cout << "averageCodingLength is:" << HF.averageCodingLength << endl;
}
DataType decode(HFTree &HF, string code)
{
    size_t i = 0, j = HF.root;
    while (i < code.length() && j != -1)
        if (code[i++] == '0')   
            j = HF.elem[j].lchild;
        else
            j = HF.elem[j].rchild;
    if (j == -1)
    {
        cout << "Can not decode the code" << endl;
        return 0;
    }
    return HF.elem[j].data;
}
