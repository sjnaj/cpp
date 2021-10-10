/*
 * @Author: fengsc
 * @Date: 2021-08-21 17:41:34
 * @LastEditTime: 2021-09-18 00:46:38
 */
#ifndef _BinaryTree_h
#include "BinaryTree.h"
#endif                                    // !_BinaryTree_h
void Create(BinTree &T, string s, int &i) //
{
    char ch = s[i++];
    if (i <= s.length())
    {
        if (ch == '(' && s[i] == ',' || (ch == ',' && s[i] == ')')) //空子女情况
        {
            T = nullptr;
        }
        else if (ch == '(' || (ch == ',')) //非空子女情况
            Create(T, s, i);
        else if (ch == ')') //迭代越过左括号
            Create(T, s, i);
        else
        {
            T = new TreeNode(ch); //赋值
            if (s[i] == '(')      //有子女
            {
                Create(T->lchild, s, i);
                Create(T->rchild, s, i);
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
int ComputeExpression(BinTree &T)
{
    if (T->lchild)
        return DoOperator(T->data, ComputeExpression(T->lchild), ComputeExpression(T->rchild));
    else
        return T->data - '0';
}
int DoOperator(char op, int x, int y)
{
    switch (op)
    {
    case '+':
        return x + y;
    case '-':
        return x - y;
    case '/':
        if (fabs(y) < 1e-5)
        {
            cout << "Divide by zero!" << endl;
            exit(1);
        }
        return x / y;
    case '*':
        return x * y;
    case '%':
        if (fabs(y) < 1e-5 || x - (int)x > 1e-5 || y - (int)y > 1e-5)
        {
            cout << "Mod by zero or double!" << endl;
            exit(1);
        }
        return (int)x % (int)y;
    case '^':
        return pow(x, y);
    default:
        exit(-1);
    }
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
int Height(BinTree &T) //基于后序遍历
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
BinTree GetParent(BinTree &T, char c)
{
    if (!T || T->data == c) //只有最初可能出现根结点数据为c
        return NULL;
    if ((T->lchild && T->lchild->data == c) || (T->rchild && T->rchild->data == c))
        return T;
    BinTree s = GetParent(T->lchild, c);
    return (s ? s : GetParent(T->rchild, c));
}
void PrintStack(stack<BinTree> S)
{
    while (!S.empty())
    {
        cout << S.top()->data;
        S.pop();
    }
    cout << endl;
}
void PreOrderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T;
    while (!S.empty() || t)
    {
        while (t)
        {
            Visit(t); //中
            S.push(t);
            t = t->lchild; //左
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

        Visit(t);      //中
        if (t->rchild) //右,先进，后访问
            S.push(t->rchild);
        if (t->lchild) //左
            S.push(t->lchild);
    }
}
void InorderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T;
    while (!S.empty() || t)
    {
        GoAlongLeftBranch(t, S); //左
        Visit(S.top());          //中
        t = S.top()->rchild;     //控制权交给右子女
        S.pop();
    }
}
void TraverseGeneral(BinTree &T, int flags)
{
    stack<pair<BinTree, bool>> S;
    BinTree t;
    bool accessible;
    S.push(make_pair(T, false));
    while (!S.empty())
    {
        t = S.top().first;
        accessible = S.top().second;
        S.pop();
        if (t)
        {
            if (accessible)
                Visit(t);
            /*逆序入栈*/
            else
            {
                /*每一个局部的有序访问保证了整个树的有序访问*/
                if (flags == 1) //tlr,可简化
                {
                    S.push(make_pair(t->rchild, false));
                    S.push(make_pair(t->lchild, false));
                    S.push(make_pair(t, true));
                }
                else if (flags == 2) //ltr
                {
                    S.push(make_pair(t->rchild, false));
                    S.push(make_pair(t, true));
                    S.push(make_pair(t->lchild, false));
                }
                else if (flags == 3) //lrt
                {
                    S.push(make_pair(t, true));
                    S.push(make_pair(t->rchild, false));
                    S.push(make_pair(t->lchild, false));
                }
            }
        }
    }
}
void PostOrderUnrecur(BinTree &T)
{
    stack<BinTree> S;
    BinTree t = T, p = nullptr;
    while (!S.empty() || t)
    {
        GoAlongLeftBranch(t, S); //左
        t = S.top();
        if (t->rchild && t->rchild != p)
            t = t->rchild; //如果非空右子女没被访问过就将控制权交给右子女
        else
        {
            Visit(t); //中
            p = t;
            t = nullptr; //终止控制，防止重复访问
            S.pop();
        }
    }
}
void LevelOrder(BinTree &T)
{
    queue<BinTree> Q;
    BinTree p;
    int size;
    Q.push(T);
    while (!Q.empty())
    {
        size = Q.size();
        while (size--)
        {
            p = Q.front();
            Q.pop();
            Visit(p);
            if (!size) //分层
                cout << endl;
            if (p->lchild)
                Q.push(p->lchild);
            if (p->rchild)
                Q.push(p->rchild);
        }
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
void PrintBlank(int n)
{
    while (n--)
        cout << " ";
}
void PrintLevel(BinTree &T)
{
    queue<BinTree> Q;
    int h = Height(T);
    int i = 0, cnt = 0;
    BinTree p = T;
    Q.push(T);
    PrintBlank((int)pow(2, h - 1));
    while (!Q.empty())
    {
        if (cnt == (int)pow(2, i))
        {
            i++;
            cnt = 0;
            cout << endl;
            PrintBlank((int)pow(2, h - i - 1));
        }
        p = Q.front();
        Q.pop();
        Visit(p);
        cnt++;
        PrintBlank((int)pow(2, h - i) - 1);
        if (p->lchild)
        {
            Q.push(p->lchild);
        }
        if (p->rchild)
            Q.push(p->rchild);
    }
    cout << endl;
}
int CountNode(BinTree &T, int degree)
{
    if (!T)
        return 0;
    if ((T->lchild && T->rchild && degree == 2) | (((T->lchild && !T->rchild) || (T->rchild && !T->lchild)) && degree == 1) || (!T->lchild && !T->rchild && degree == 0))
        return CountNode(T->lchild, degree) + CountNode(T->rchild, degree) + 1;
    else
        return CountNode(T->lchild, degree) + CountNode(T->rchild, degree);
}
int Count(BinTree &T)
{
    if (!T)
        return 0;
    return Count(T->lchild) + Count(T->rchild) + 1;
}
bool IsBalance(BinTree &T, int &height)
{
    if (!T)
    {
        height = 0;
        return true;
    }
    int lh, rh;
    if (IsBalance(T->lchild, lh) & IsBalance(T->rchild, rh) & abs(lh - rh) <= 1 & ((height = max(lh, rh) + 1) > 0)) //用按位与防止短路
        return true;
    return false;
    /* int lh, rh;//标准写法
    bool t1=IsBalance(T->lchild, lh);
    bool t2=IsBalance(T->rchild, rh);
    height = max(lh, rh)+ 1;
    if(t1&&t2&&abs(lh-rh) <= 1)
    return true;
    return false;*/
    /*  if (IsBalance(T->lchild, lh) && IsBalance(T->rchild, rh) && abs(lh - rh) <= 1 &&(height = max(lh, rh) + 1))
        return true;
    return false;//返回false时height可能不准确*/
}
int NodeHeight(BinTree &T, BinTree &p)
{
    if (!T)
        return 0;
    if (T == p)
        return 1;
    int lh = NodeHeight(T->lchild, p), rh = NodeHeight(T->rchild, p);
    if (lh || rh)
        return max(lh, rh) + 1;
    return 0;
}
int MaxEle(BinTree &T)
{
    if (!T)
    {
        return INT_MIN;
    }
    return max(max(MaxEle(T->lchild), MaxEle(T->rchild)), T->data - '0'); //数据类型是数字时就不用-'0'了,char时只能比较0-9
}
int MinEle(BinTree &T)
{
    if (!T)
    {
        return INT_MAX;
    }
    return min(min(MinEle(T->lchild), MinEle(T->rchild)), T->data - '0');
}
void ExchangeNode(BinTree &T)
{
    if (!T)
        return;
    ExchangeNode(T->lchild);
    ExchangeNode(T->rchild);
    swap(T->lchild, T->rchild);
    /* root->left = swapNode(root->left);
        root->right = swapNode(root->right);
        swap(root->left, root->right);
        */
}
bool IsComplete(BinTree &T)
{
    queue<BinTree> Q;
    bool flag = false;
    BinTree p;
    Q.push(T);
    while (!Q.empty())
    {
        p = Q.front();
        Q.pop();
        if (p)
        {
            if (flag) //同一层非空结点之前有空结点则不是完全二叉树
                return false;
            Q.push(p->lchild);
            Q.push(p->rchild);
        }
        else
            flag = true; //空结点标记
    }
    return true;
}
bool IsSameTree(BinTree p, BinTree q)
{
    if (!p && !q)
        return true;
    if (!(p && q))
        return false;
    if (p->data != q->data)
        return false;
    return IsSameTree(p->lchild ,q->lchild) && IsSameTree(p->rchild, q->rchild);
}