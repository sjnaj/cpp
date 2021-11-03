/*
 * @Author: fengsc
 * @Date: 2021-10-31 14:55:19
 * @LastEditTime: 2021-11-01 19:43:56
 */
#ifndef _Tree_H
#include "Tree.h"
#endif //
void createCSTree(CSTree &t, DataType elem[], int degree[], int n)
{
    if (!n)
    {
        t = nullptr;
        return;
    }
    int d, k = 0;
    CSTree Q[n];
    for (int i = 0; i < n; i++)
        Q[i] = new Node(elem[i]);
    for (int i = 0; i < n; i++)
    {
        d = degree[i];
        if (d)
        {
            Q[i]->child = Q[++k];
            while (--d)
                Q[k++]->sibling = Q[k + 1];
        }
    }
    t = Q[0];
}
CSTree createByGeneralLists(const string &str)
{
    stack<CSTree> s;
    int flag;
    char ch;
    CSTree t = new Node(str[0]); //确定根结点
    CSTree p = t, ptr;  
    for (int i = 1; i < str.length(); i++)
    {
        ch = str[i];
        switch (ch)
        {
        case '(':
            s.push(p); //子树根入栈
            flag = 1;  //标记下个结点是子女
            break;
        case ')': //子树根出栈
            s.pop();
            break;
        case ',':
            flag = 0; //标记下个结点是兄弟
            break;
        default:
            p = new Node(ch);
            if (flag)
            {
                ptr = s.top();
                ptr->child = p;
                ptr = p; //ptr进入子女结点
            }
            else
            {
                ptr->sibling = p;
                ptr = p;
            }
        }
    }
    return t;
}
void printCSTree(CSTree &t, int k) //凹入表输出
{
    if (t)
    {
        for (int i = 0; i < k; i++)
            cout << ' ';
        cout << t->data << endl;
        for (CSTree p = t->child; p; p = p->sibling)
            printCSTree(p, k + 5); //不同层间距
    }
}
CSTree getParent(CSTree &t, CSTree p)
{
    CSTree q, s;
    for (q = t->child; q; q = q->sibling)
    {
        if (q == p)
            return t;
        if (s = getParent(q, p)) //在子树中查找
            return s;
    }
    return nullptr;
}
CSTree getParent(CSTree &t, DataType x)
{
    CSTree q, s;
    for (q = t->child; q; q = q->sibling)
    {
        if (q->data == x)
            return t;
        if (s = getParent(q, x)) //在子树中查找
            return s;
    }
    return nullptr;
}
void freeTree(CSTree &t)
{
    if (t)
    {
        if (t->child)
            for (CSTree p = t->child, tmp; p; p = tmp)
            {
                tmp = p->sibling;
                freeTree(p);
            }
        delete t;
        t = nullptr; //防止成为野指针
    }
}
BinTree convertToBinTree(CSTree &t)
{
    if (!t)
        return nullptr;
    BinTree root = new TreeNode(t->data);
    if (t->child) //防止for循环初值越界
    {
        BinTree bp = root->lchild = convertToBinTree(t->child);                //建立左支
        for (CSTree p = t->child->sibling; p; p = p->sibling, bp = bp->rchild) //建立左支的右支
        {
            bp->rchild = convertToBinTree(p);
        }
    }
    return root;
}
CSTree convertToCSTree(BinTree &T)
{
    if (!T)
        return nullptr;
    CSTree t = new Node(T->data);
    if (T->lchild)
    {
        CSTree q = t->child = convertToCSTree(T->lchild);                     //链接左子女
        for (BinTree p = T->lchild->rchild; p; p = p->rchild, q = q->sibling) //链接左子女的兄弟子女
            q->sibling = convertToCSTree(p);
    }
    return t;
}
void visit(CSTree &t)
{
    if (t)
        cout << t->data;
}
void preOrderRecur(CSTree &t)
{
    if (t)
    {
        visit(t);
        for (CSTree p = t->child; p; p = p->sibling)
            preOrderRecur(p);
    }
}
void postOrderRecur(CSTree &t)
{
    if (t)
    {
        for (CSTree p = t->child; p; p = p->sibling)
        {
            postOrderRecur(p);
            visit(p);
        }
    }
}
void inOrderRecur(CSTree &t)
{
    if (t)
    {
        inOrderRecur(t->child);
        visit(t);
        if (t->child)
            for (CSTree p = t->child->sibling; p; p = p->sibling)
                inOrderRecur(p);
    }
}
void preOrder(CSTree &t) //先根后子女们
{
    stack<CSTree> s;
    CSTree p = t;
    while (!s.empty() || p)
    {
        while (p)
        {
            visit(p);
            s.emplace(p);
            p = p->child;
        }
        p = s.top()->sibling; //转交控制权
        s.pop();
    }
}
void postOrder(CSTree &t) //先子女们后根
{
    stack<CSTree> s;
    CSTree p = t;
    while (!s.empty() || p)
    {
        while (p)
        {
            s.emplace(p);
            p = p->child;
        }
        visit(s.top()); //访问各子树根结点，易与二叉树的中序遍历混淆
        p = s.top()->sibling;
        s.pop();
    }
}
void inOrder(CSTree &t) //先老大再根再小儿子
{
    stack<CSTree> s;
    CSTree p = t, q, parent;
    while (!s.empty() || p)
    {
        while (p)
        {
            s.emplace(p);
            p = p->child;
        }
        q = s.top();
        if (!q->child) //没儿子自己访问自己
            visit(q);
        if ((parent = getParent(t, q)) && parent->child == q) //是大儿子就访问爹
            visit(parent);
        p = q->sibling;
        s.pop();
    }
}
void levelOrder(CSTree &t)
{
    queue<CSTree> q;
    size_t size;
    q.emplace(t);
    CSTree p = nullptr;
    while (!q.empty()) //所要访问的结点都在队列里，为空即结束
    {
        size = q.size();
        while (size--)
        {
            p = q.front();
            q.pop();
            visit(p);
            if (p->child)
            {
                for (CSTree r = p->child; r; r = r->sibling)
                    q.emplace(r);
            }
        }
        cout << endl;
    }
}
