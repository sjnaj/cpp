/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:34
 * @LastEditTime: 2021-12-12 01:08:03
 */
#ifndef _BSTree_H
#include "BSTree.h"
#endif
template <typename Tree, typename Key = char>      // !_BSTree_H
Tree search(const Tree &root, Key x, Tree &father) //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
{
    Tree p = root;
    father = nullptr;
    while (p && p->key != x)
    {
        father = p;
        p = x < p->key ? p->lchild : p->rchild;
    }
    return p;
}
BSTree searchRecur(const BSTree &root, KeyType x, BSTree &father) //传入空指针father
{
    if (!root)
        return nullptr;
    if (root->key == x)
        return root;
    father = root;
    return x < root->key ? search(root->lchild, x, father) : search(root->rchild, x, father);
}
bool insert(BSTree &root, KeyType x, BSDataType d)
{
    BSTree cur, father;
    if (search(root, x, father)) //查找到则没有空间插入
        return false;
    cur = new BSNode(x, d);
    if (!father) //空树则将当前结点作为根
        root = cur;
    else
        x < father->key ? father->lchild = cur : father->rchild = cur;
    return true;
}
template <typename Tree, typename Key = int>
Tree create(vector<Key> s)
{
    Tree root = nullptr; //不置空则第一次查找时会出现错误
    for (int i = 0; i < s.size(); i++)
        insert(root, s[i]);
    return root;
}
template <typename Tree, typename Key = char>
Tree deleteNode(Tree &root, Key x) //不存在返回空,被删为根结点时返回根结点,其余返回被删位置父结点
{
    Tree cur, father, res;
    if (!(cur = search(root, x, father)))
        return nullptr;
    father = root; //利用闲置的father暂存root
    res = removeAt(root, cur, father);
    if (root != father) //根被删
        return root;    //返回新根
    return res;
}
template <typename Tree>
Tree removeAt(Tree &root, Tree &cur, Tree &parent)
{
    Tree p = nullptr;               //*
    if (cur->lchild && cur->rchild) //寻找中序直接后继(右子树里的最左端)，并对调数据，使情况归于travial
    {
        p = cur->rchild;
        parent = cur;
        while (p->lchild)
        {
            parent = p;
            p = p->lchild;
        }
        cur->key = p->key; //更换被删节点原位置的值为其后继的值，注意不能改变p的值，因为最后要判别方向
        cur = p;           //将cur移到待删处
    }
    p = cur->lchild ? cur->lchild : cur->rchild; //将要被链接的结点，cur至多有一个子树
    if (p)
        p->parent = parent; //!链接到新父结点
    if (!parent)            //被删的为根结点
        root = p;
    else //一棵或零棵子树，为零则置空
    {
        cur->key < parent->key ? parent->lchild = p : parent->rchild = p;
    }
    delete cur;
    cur = nullptr;
    return parent;
}
template <typename Tree>
void PrintKey(Tree &T)
{
    queue<Tree> Q;
    Tree p;
    int size;
    Q.push(T);
    int gap = pow(2, Height(T));
    bool hasNode = true;
    while (1)
    {
        if (gap - 3 > 0)
            cout << string(gap - 3, ' '); //行首空格
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
                cout << p->key << ' ';
                Q.push(p->lchild);
                Q.push(p->rchild);
            }
            else
            {
                cout << "   ";
                Q.push(nullptr);
                Q.push(nullptr);
            }
            if (2 * gap - 3 > 0)
                cout << string(2 * gap - 3, ' ');
        }
        gap /= 2;
        cout << endl; //分层
    }
}