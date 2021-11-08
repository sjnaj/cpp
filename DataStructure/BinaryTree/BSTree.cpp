/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:34
 * @LastEditTime: 2021-11-07 03:21:22
 */
#ifndef _BSTree_H
#include "BSTree.h"
#endif
template <typename Tree, typename DataType = char>      // !_BSTree_H
Tree search(const Tree &root, DataType x, Tree &father) //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
{
    Tree p = root;
    father = nullptr;
    while (p && p->data != x)
    {
        father = p;
        p = x < p->data ? p->lchild : p->rchild;
    }
    return p;
}
BSTree searchRecur(const BSTree &root, BSTDataType x, BSTree &father) //传入空指针father
{
    if (!root)
        return nullptr;
    if (root->data == x)
        return root;
    father = root;
    return x < root->data ? search(root->lchild, x, father) : search(root->rchild, x, father);
}
bool insert(BSTree &root, BSTDataType x)
{
    BSTree cur, father;
    if (search(root, x, father)) //查找到则没有空间插入
        return false;
    cur = new BSNode(x);
    if (!father) //空树则将当前结点作为根
        root = cur;
    else
        x < father->data ? father->lchild = cur : father->rchild = cur;
    return true;
}
template <typename Tree>
Tree create(string s)
{
    Tree root = nullptr; //不置空则第一次查找时会出现错误
    for (int i = 0; i < s.length(); i++)
        insert(root, s[i]);
    return root;
}
template <typename Tree, typename DataType = char>
Tree deleteNode(Tree &root, DataType x)
{
    Tree father, cur, p;
    if (!(cur = search(root, x, father)))
        return nullptr;
    if (cur->lchild && cur->rchild) //寻找中序直接后继(右子树里的最左端)，并对调数据，使情况归于travial
    {
        p = cur->rchild;
        father = cur;
        while (p->lchild)
        {
            father = p;
            p = p->lchild;
        }
        cur->data=p->data;//更换被删节点原位置的值为其后继的值，注意不能改变p的值，因为最后要判别方向
        cur = p; //将cur移到待删处
    }
    p = cur->lchild ? cur->lchild : cur->rchild; //将要被链接的结点，cur至多有一个子树
    if (!father)                                 //被删的为根结点
        root = p;
    else //一棵或零棵子树，为零则置空
    cur->data<father->data?father->lchild=p:father->rchild=p;  
    delete cur;
    cur = nullptr;
    return father;
}
