/*
 * @Author: fengsc
 * @Date: 2021-08-21 17:41:34
 * @LastEditTime: 2021-08-22 22:18:36
 */
#ifndef _BinaryTree_h
#include "BinaryTree.h"
#endif // !_BinaryTree_h
void Create(BinTree &T, string s, int &i)
{
    char ch = s[i++];
    if (i <= s.length())
    {
        if (ch == '(')
        {
            if (s[i] == ',')
                T = nullptr;
            else
                Create(T, s, i);
        }
        else if (ch == ')')
        {
            i++; //越过逗号
            T = nullptr;
        }
        else
        {
            T = new TreeNode(ch); //赋值
            if (s[i] == ')')
                i++;              //越过右括号
            else if (s[i] == '(') //有子女
            {
                Create(T->lchild, s, i);
                Create(T->rchild, s, ++i); //++i越过逗号
            }
        }
    }
}
void CreateUnrecur(BinTree &T, string s)
{
    stack<BinTree> S;
    int flag;
    char ch;
    T = new TreeNode(s[0]); //确定根结点
    BinTree p = T, prt;     //p需要在T初始化后确定
    for (int i = 1; i < s.length(); i++)
    {
        ch = s[i];
        switch (ch)
        {
        case '(':
            S.push(p); //子树根入栈
            flag = 1;  //标记下个结点是左子女
            break;
        case ')': //子树根出栈
            S.pop();
            break;
        case ',':
            flag = 0; //标记下个结点是右子女
            break;
        default:
            p = new TreeNode(ch);
            prt = S.top();
            if (flag)
                prt->lchild = p;
            else
                prt->rchild = p;
        }
    }
}
void CreateExpression(BinTree &T, string S)
{
    stack<BinTree> P;
    InfixToPostfix(S);
    BinTree n1, n2;
    for (int i = 0; i < S.length(); i++)
    {
        if (isdigit(S[i]))
        {
            BinTree p = new TreeNode(S[i]);
            P.push(p); //数字进栈
        }
        else
        {
            n2 = P.top();
            P.pop();
            n1 = P.top();
            P.pop();
            BinTree p = new TreeNode(S[i], n1, n2); //是操作符则出栈两个作为子女再进栈
            P.push(p);
        }
    }
    T = P.top(); //最后留在栈内的是根结点
}
void CreateByPreQrder(BinTree &T, string S, int &i)
{
    DataType ch = S[i++];
    if (ch == '#')
        T = nullptr;
    else
    {
        T = new TreeNode(ch);
        CreateByPreQrder(T->lchild, S, i);
        CreateByPreQrder(T->rchild, S, i);
    }
}
void PreOrder(BinTree &T)
{
    if (T)
    {
        Visit(T);
        PreOrder(T->lchild);
        PreOrder(T->rchild);
    }
}
void InOrder(BinTree &T)
{
    if (T)
    {
        InOrder(T->lchild);
        Visit(T);
        InOrder(T->rchild);
    }
}
void PostOrder(BinTree &T)
{
    if (T)
    {
        PostOrder(T->lchild);
        PostOrder(T->rchild);
        Visit(T);
    }
}
void Print(BinTree &T)
{
    if (T)
    {
        cout << T->data;
        if (T->lchild || T->rchild) //全空才不显示
        {
            cout << '(';
            Print(T->lchild);
            cout << ',';
            Print(T->rchild);
            cout << ')';
        }
    }
}
void PrintPreOrderExp(BinTree &T)
{
    if (T)
    {
        cout << T->data;
        PrintPreOrderExp(T->lchild);
        PrintPreOrderExp(T->rchild);
    }
    else
        cout << '#';
}
void FreeTree(BinTree &T)
{
    if (T)
    {
        FreeTree(T->lchild);
        FreeTree(T->rchild);
        delete T;
    }
}
int Height(BinTree &T)
{
    if (T)
        return max(Height(T->lchild) + 1, Height(T->rchild) + 1);
    else
        return 0;
}
BinTree GetParent(BinTree &T, BinTree &p)
{
    if (!T || T == p)
        return NULL;
    if (T->lchild == p || T->rchild == p)
        return T;
    BinTree s = GetParent(T->lchild, p);
    return (s ? s : GetParent(T->rchild, p));
}
void PreOrderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T;
    while (!S.empty() || t)
    {
        while (t)
        {
            Visit(t);
            S.push(t);
            t = t->lchild;
        }
        t = S.top()->rchild; //控制权交给右结点
        S.pop();
    }
}
void PreOrderUnrecur1(BinTree &T) //先序遍历较简便非递归算法，但不通用
{
    stack<BinTree> S;
    BinTree t;
    if (T)
        S.push(T);
    while (!S.empty())
    {
        t = S.top();
        S.pop();
        Visit(t);
        if (t->rchild)
            S.push(t->rchild);
        if (t->lchild)
            S.push(t->lchild);
    }
}
void InorderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T;
    while (!S.empty() || t)
    {
        GoAlongLeftBranch(t, S);
        Visit(S.top());
        t = S.top()->rchild; //控制权交给右子女
        S.pop();
    }
}
void PostOrderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T, p = nullptr;
    while (!S.empty() || t)
    {
        GoAlongLeftBranch(t, S);
        t = S.top();
        if (t->rchild && t->rchild != p)
            t = t->rchild; //如果非空右子女没被访问过就将控制权交给右子女
        else
        {
            Visit(t);
            p = t;
            t = nullptr; //控制权没交给右子女就不会向左下不断走
            S.pop();
        }
    }
}
void LevelOrder(BinTree &T)
{
    queue<BinTree> Q;
    BinTree p;
    Q.push(T);
    while (!Q.empty())
    {
        p = Q.front();
        Q.pop();
        Visit(p);
        if (p->lchild)
            Q.push(p->lchild);
        if (p->rchild)
            Q.push(p->rchild);
    }
}
void Visit(BinTree &t)
{
    cout << t->data << ' ';
}
void GoAlongLeftBranch(BinTree &t, stack<BinTree> &S)
{
    while (t)
    {
        S.push(t);
        t = t->lchild;
    }
}
