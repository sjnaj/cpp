/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:34
 * @LastEditTime: 2021-11-04 23:40:50
 */
#ifndef _BSTree_H
#include "BSTree.h"
#endif                                                           // !_BSTree_H
BSTree search(const BSTree &root, BSTDataType x, BSTree &father) //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
{
    BSTree p = root;
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
BSTree createCSTree(string s)
{
    BSTree root = nullptr; //不置空则第一次查找时会出现错误
    for (int i = 0; i < s.length(); i++)
        insert(root, s[i]);
    return root;
}
void printInorder(const BSTree &root)
{
    if (!root)
        return;
    printInorder(root->lchild);
    cout << root->data << ' ';
    printInorder(root->rchild);
}
bool deleteBSNode(BSTree root, BSTDataType x)
{
    BSTree father, cur, p;
    if (!(cur = search(root, x, father)))
        return false;
    if (cur->lchild && cur->rchild) //寻找中序直接后继(右子树里的最左端)，并对调数据，使情况归于travial
    {
        p = cur->rchild;
        father = p;
        while (p->lchild)
        {
            father = p;
            p = p->lchild;
        }
        swap(cur->data, p->data);
        cur = p;//将cur移到待删处
    }
    p = cur->lchild ? cur->lchild : cur->rchild; //将要被链接的结点，cur至多有一个子树
    if (!father)                                 //被删的为根结点
        root = p;
    else //p是否存在都要链接，不存在时要置空
        cur->data < father->data ? father->lchild = p : father->rchild = p;
    delete cur;
    return true;
}
