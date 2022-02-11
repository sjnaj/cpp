/*
 * @Author: fengsc
 * @Date: 2021-08-21 17:41:34
 * @LastEditTime: 2021-12-28 23:48:59
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
        else if (ch == ')') //越过左括号
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
BinTree CreateUnrecur(string s)
{
    stack<BinTree> S;
    int flag;
    char ch;
    BinTree T = new TreeNode(s[0]); //确定根结点
    BinTree p = T, prt;             //p需要在T初始化后确定
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
    return T;
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
        else//可略加修改使支持一元运算符
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
    if (!T)
        return 0;
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
BinTree CreateByPreQrder(string &S)
{
    if (S[0] == '#')
    {
        S.erase(0, 1);
        return nullptr;
    }
    /*size_t size;//数据为整形时使用
    BinTree root = new TreeNode(stoi(S, size));
    S.erase(0, size + 1);*/
    //数据为char类型
    BinTree root = new TreeNode(S[0]);
    root->lchild = CreateByPreQrder(S);
    root->rchild = CreateByPreQrder(S);
    return root;
}
string CreatePreOrderList(BinTree &root)
{
    if (!root)
        return "#";
    string ans;
    ans.push_back(root->data);
    /*数据为整数时需要在数据之间插入间隔符
    ans += to_string(root->data) + ",";*/
    ans += CreatePreOrderList(root->lchild);
    ans += CreatePreOrderList(root->rchild);
    return ans;
}
template <typename Tree>
void PreOrder(Tree &T)
{
    if (T)
    {
        Visit(T);
        PreOrder(T->lchild);
        PreOrder(T->rchild);
    }
}
template <typename Tree>
void InOrder(Tree &T)
{
    if (T)
    {
        InOrder(T->lchild);
        Visit(T);
        InOrder(T->rchild);
    }
}
template <typename Tree>
void PostOrder(Tree &T)
{
    if (T)
    {
        PostOrder(T->lchild);
        PostOrder(T->rchild);
        Visit(T);
    }
}
template <typename Tree>
void Print(Tree &T)
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
template <typename Tree>
void FreeTree(Tree &T)
{
    if (T)
    {
        FreeTree(T->lchild);
        FreeTree(T->rchild);
        delete T;
        T = nullptr;
    }
}
void PrintRecess(BinTree &T, int k)
{
    if (T)
    {
        for (int i = 0; i < k; i++)
            cout << ' ';
        cout << T->data << endl;
        PrintRecess(T->lchild, k + 5);
        k += 5;
        if (!T->lchild && T->rchild) //左支为空右支不为空就用#占位
        {
            for (int i = 0; i < k; i++)
                cout << ' ';
            cout << '#' << endl;
        }
        PrintRecess(T->rchild, k);
    }
}
template<typename Tree>
int Height(Tree &T) //基于后序遍历
{
    if (T)
        return max(Height(T->lchild) , Height(T->rchild))+1;
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
        size = Q.size(); //记录当前层的结点数
        while (size--)   //一次访问一层
        {
            p = Q.front();
            Q.pop();
            Visit(p);
            if (p->lchild)
                Q.push(p->lchild);
            if (p->rchild)
                Q.push(p->rchild);
        }
        cout << endl; //分层
    }
}
template<typename Tree>
void Visit(Tree &t)
{
    if (t)
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
template <typename Tree>
void PrintTree(Tree &T)
{
    queue<Tree> Q;
    Tree p;
    int size;
    Q.push(T);
    int gap = pow(2, Height(T));
    bool hasNode = true;
    while (1)
    {
        if(gap-3>0)
        cout<<string(gap-3,' '); //行首空格
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
                cout << p->data << ' ';
                Q.push(p->lchild);
                Q.push(p->rchild);
            }
            else
            {
                cout << "   ";
                Q.push(nullptr);
                Q.push(nullptr);
            }
            if(2*gap-3>0)
            cout<<string(2 * gap - 3,' ');
        }
        gap /= 2;
        cout << endl; //分层
    }
}
int CountNode(BinTree &T, int degree)
{
    if (!T)
        return 0;
    if ((T->lchild && T->rchild && degree == 2) | (((T->lchild && !T->rchild) || (T->rchild && !T->lchild)) && degree == 1) || (!T->lchild && !T->rchild && degree == 0))
        return CountNode(T->lchild, degree) + CountNode(T->rchild, degree) + 1;
    else//本结点不计入
        return CountNode(T->lchild, degree) + CountNode(T->rchild, degree);
}
template <typename Tree>
int Count(Tree &T)
{
    if (!T)
        return 0;
    return Count(T->lchild) + Count(T->rchild) + 1;//不用中间变量
}
template <typename Tree>
bool IsBalance(Tree &T, int &height)
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
            if (flag) //层序遍历时非空结点之前有空结点则不是完全二叉树
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
    return IsSameTree(p->lchild, q->lchild) && IsSameTree(p->rchild, q->rchild);
}
bool Find(BinTree &T, DataType val)
{
    if (!T)
        return false;
    if (T->data == val)
        return true;
    return Find(T->lchild, val) || Find(T->rchild, val);
}
TreeNode *lowestCommonAncestor(TreeNode *root, TreeNode *p, TreeNode *q)
{
    bool findInLeft_p, findInLeft_q;
    TreeNode *tmp = root;
    while (1)
    {
        if (tmp->lchild && ((findInLeft_q = Find(tmp->lchild, q->data)) | (findInLeft_p = Find(tmp->lchild, p->data))))
        {
            if (findInLeft_p && findInLeft_q)
                tmp = tmp->lchild;
            else //从两个都有变为一个有一个没有，说明有一个在另一个子树上或在结点上，本结点就是最近公共祖先
                return tmp;
        }
        else //没在左子树就在右子树
        {
            if (Find(tmp->rchild, p->data) && Find(tmp->rchild, q->data))
                tmp = tmp->rchild;
            else
                return tmp;
        }
    }
}
BinTree CreateByInAndLevel(string in, string level, int ie, int is, int ls)
{
    if (is > ie)
        return nullptr;
    int index = -1;
    while (index == -1) //找出层次序列中第一个出现在当前中序序列的元素（越过另一子树的元素）
    {
        for (size_t i = is; i <= ie; i++)
        {
            if (in[i] == level[ls])
            {
                index = i;
                break;
            }
        }
        ls++;
    }
    ls--; //多加了一个
    BinTree root = new TreeNode(level[ls]);
    root->lchild = CreateByInAndLevel(in, level, index - 1, is, ++ls);
    root->rchild = CreateByInAndLevel(in, level, ie, index + 1, ++ls);
    return root;
}
bool IsRootValSmallest(BinTree &T, DataType *pval) //基于先序遍历
{
    if (!T)
        return true;
    if (pval && T->data <= *pval) //\*pval父节点的值,空指针使第一次比较恒成立，代替设立绝对的极值
        return false;
    return IsRootValSmallest(T->lchild, &T->data) && IsRootValSmallest(T->rchild, &T->data);
}
BinTree Copy(BinTree &T)
{
    if (!T)
        return nullptr;
    BinTree root = new TreeNode(T->data);
    root->lchild = Copy(T->lchild);
    root->rchild = Copy(T->rchild);
    return root;
}
void DeleteSubTree(BinTree &T, DataType val)
{
    if (!T)
        return;
    if (T->data == val)
    {
        FreeTree(T);
        return;
    }
    if (T->lchild && T->lchild->data == val)
    {
        FreeTree(T->lchild);
        T->lchild = nullptr;
    }
    if (T->rchild && T->rchild->data == val)
    {
        FreeTree(T->rchild);
        T->rchild = nullptr;
    }
    DeleteSubTree(T->lchild, val);
    DeleteSubTree(T->rchild, val);
}