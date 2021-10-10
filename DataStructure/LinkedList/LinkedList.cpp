/*
 * @Author: fengsc
 * @Date: 2021-07-21 18:44:52
 * @LastEditTime: 2021-10-05 23:21:33
 */
#include <list>
#ifndef _LinkedList_H
#include "LinkedList.h"
#endif // !_LinkedList_H
void InitList(LinkList &Head)
{
    if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
    }
    Head->next = NULL;
}
LinkList FindByLoc(LinkList &Head, int loc)
{
    LinkList p = Head;
    int i;
    for (i = 0; i < loc && p; i++)
    {
        p = p->next;
    }
    if (!p)
        cout << "Loc error" << endl;
    return p;
}
LinkList FindByVal(LinkList &Head, DataType x)
{
    LinkList p = Head->next;
    while (p && p->data != x)
        p = p->next;
    return p;
}
bool Insert(LinkList &Head, int loc, DataType x)
{
    LinkList p = FindByLoc(Head, loc - 1);
    if (!p)
    {
        cout << "Loc error" << endl;
        return false;
    }
    LinkList cur = (LinkList)malloc(sizeof(LinkNode));
    if (!cur)
    {
        cout << "Memory allocation error" << endl;
        exit(1);
    }
    cur->next = p->next;
    cur->data = x;
    p->next = cur;
    cout << "Insert sucessful" << endl;
    return true;
}
bool Insert2(LinkList &Head, int loc, DataType x)
{
    LinkList *pcur = &Head, p = new LinkNode(x);
    if (!p)
    {
        cout << "Memory allocation error" << endl;
        exit(1);
    }
    for (int i = 0; (*pcur) && (i < loc - 1); i++)
        pcur = &(*pcur)->next;
    if (!(*pcur) || loc < 1)
        return false;
    p->next = *pcur;
    *pcur = p;
    return true;
}
void InitVal(LinkList &Head, int sum)
{
    InitList(Head);
    LinkList pred = Head, cur = NULL;
    cout << "Please input " << sum << " data in a line" << endl;
    for (int i = 0; i < sum; i++)
    {

        cur = (LinkList)malloc(sizeof(LinkNode));
        if (!cur)
        {
            cout << "Memory allocation failed" << endl;
            exit(1);
        }
        // getchar();
        pred->next = cur;
        cin >> cur->data;
        // cur->next = NULL;
        pred = cur;
    }
    pred->next = NULL; //最后再加NULL，不需要每步都加一次,用构造函数初始化更方便
}
void InitVal2(LinkList &Head, int sum)
{
    InitList(Head);
    LinkList cur = NULL;
    for (int i = 0; i < sum; i++)
    {
        cur = (LinkList)malloc(sizeof(LinkNode));
        if (!cur)
        {
            cout << "Memory allocation failed" << endl;
            exit(1);
        }
        cur->next = Head->next;
        cin >> cur->data;
        Head->next = cur;
    }
}
void InitValWithoutHeader(LinkList &Head, int num)
{
    LinkList *pcur = &Head;
    cout << "Please enter " << num << " datas" << endl;
    while (num--)
    {
        LinkList cur = new LinkNode;
        if (!cur)
        {
            cout << "Memory allocation failed" << endl;
            exit(1);
        }
        cin >> cur->data;
        *pcur = cur;
        pcur = &cur->next;
    }
    *pcur = nullptr;
}

bool RemoveByLoc(LinkList &Head, int loc)
{

    LinkList p = FindByLoc(Head, loc - 1), q;
    if (p && p->next)
    {
        q = p->next;
        p->next = q->next;
        free(q); //释放结点；
        cout << "Delete sucessful" << endl;
        return true;
    }
    else
    {
        cout << "Loc error" << endl;
        return false;
    }
}
void Print(LinkList &Head, int flag)
{
    LinkList p = flag ? Head->next : Head;
    while (p)
    {
        cout << p->data << ' ';
        p = p->next;
    }
    cout << '\n';
}
bool RemoveByVal(LinkList &Head, DataType x)
{
    LinkList p = Head, q;
    int flag = 0;
    while (p && p->next)
    {
        if (p->next->data == x)
        {
            flag = 1;
            q = p->next;
            p->next = q->next;
            free(q);
        }
        p = p->next;
    }
    if (flag)
        return true;
    else
        return false;
}
bool RemoveByVal2(LinkList &Head, DataType x)
{
    LinkList *pcur = &Head, p;
    int flag = 0;
    while (p = *pcur)
    {
        if (p->data == x)
        {
            flag = 1;
            *pcur = p->next;
            free(p);
        }
        else
            pcur = &p->next;
    }
    if (flag)
        return true;
    else
        return false;
}
void RemoveByValWithoutReferAndHeader(LinkList Head, DataType x) //形参和实参唯一的区别是地址不同，它们连接着同一条链表，都可以改变首元结点
{
    LinkList *pcur = &Head, p, phead = Head;
    while (p = *pcur)
    {
        if (p->data == x)
        {
            *pcur = p->next;
            free(p);
        }
        else
            pcur = &p->next;
    }
    //*phead = *Head;//更新首元结点
    phead->next = Head->next;
    phead->data = Head->data;
}

LinkList Copy(LinkList &Head)
{
    LinkNode *newhead, *cur = Head, **pcur = &newhead;
    while (cur)
    {
        *pcur = new LinkNode(cur->data);
        pcur = &(*pcur)->next;
        cur = cur->next;
    }
    return newhead;
}
LinkNode *DetectCycle(LinkNode *head)
{
    LinkNode *slow = head, *fast = head;
    while (1)
    {
        if (fast && fast->next && (fast = fast->next->next))
        {
            slow = slow->next;
            if (fast == slow)
                break;
        }
        else
            return nullptr;
    }
    slow = head;
    while (1)
    {
        if (fast == slow)
            return fast;
        slow = slow->next;
        fast = fast->next;
    }
}

void FreeList(LinkList &Head)
{
    LinkList p;
    while (Head)
    {
        p = Head->next; //保存Head后置结点
        free(Head);
        Head = p;
    }
}
void Reverse(LinkList &Head)
{
    LinkList temp = NULL, pred = NULL;
    LinkList cur = Head->next;
    while (cur)
    {
        temp = cur->next;
        cur->next = pred;
        pred = cur;
        cur = temp;
    }
    Head->next = pred;
}
LinkList ReverseRecursively(LinkList &head)
{
    if (!head || !(head->next))
    {
        return head;
    }
    LinkList newhead = ReverseRecursively(head->next);
    head->next->next = head;
    head->next = NULL;
    return newhead;
}
LinkList AddTwoNembers(LinkList L1, LinkList L2)
{
    LinkList p1 = ReverseRecursively(L1), p2 = ReverseRecursively(L2), prev = nullptr;
    int carry = 0;
    while (p1 || p2 || carry)
    {
        int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
        LinkList cur = new LinkNode(sum % 10, prev);
        prev = cur;
        carry = sum / 10;
        if (p1)
            p1 = p1->next;
        if (p2)
            p2 = p2->next;
    }
    return prev;
}
LinkList MultiplyTwoNumbers(LinkList L1, LinkList L2)
{
    LinkList head1 = ReverseRecursively(L1), head2 = ReverseRecursively(L2), p1 = head1, p2, head = nullptr, *pp, p;
    int count = 0, carry;
    while (p1)
    {
        p2 = head2;
        pp = &head;
        for (int i = 0; i < count; i++) //错位，模仿竖式计算方式
            pp = &(*pp)->next;
        while (p2)
        {
            if (!(p = *pp))
                p = *pp = new LinkNode(p1->data * p2->data); //新建
            else
                p->data += p1->data * p2->data; //叠加
            pp = &p->next;
            p2 = p2->next;
        }
        count++;
        p1 = p1->next;
    }
    pp = &head;
    while (p = *pp) //进位，每一项暂存的数字不会太大(极限情况也就是几十个81)，最后进位一次即可
    {
        if (carry = p->data / 10)
        {
            p->data = p->data % 10;
            pp = &p->next;
            if (*pp)
                (*pp)->data += carry;
            else
                *pp = new LinkNode(carry);
        }
        else
            pp = &p->next;
    }
    return ReverseRecursively(head);
}
LinkList FactorialLargeNumbers(int num)
{

    LinkList head = new LinkNode(1), *pp, p;
    for (int i = 1, carry; i <= num; i++)
    {
        carry = 0;
        pp = &head;
        while ((p = *pp) || carry)
        {
            if (p)
                p->data = p->data * i + carry; //每一位都乘i,同时考虑进位，也可后面再集中进位
            else
                p = *pp = new LinkNode(carry);
            carry = p->data / 10;
            p->data = p->data % 10;
            pp = &p->next;
        }
    }
    return ReverseRecursively(head);
    /*LinkList head = new LinkNode(1), p;
    for (int i = 1, carry; i <= num; i++)
    {
        carry = 0;
        p = head;
        while (p)
        {
            p->data = p->data * i + carry; //每一位乘i
            carry = p->data / 10;
            p->data = p->data % 10;
            while ((!p->next) && carry)//易错点，carry可能大于等于10
            {
                p->next = new LinkNode(carry % 10);
                carry /= 10;
                p = p->next;
            }
            p = p->next;
        }
    }
    return ReverseRecursively(head);*/
}
void InitCircListVal(LinkList &Head, int sum)
{
    if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
    }
    Head->next = Head;
    LinkList Last = Head, cur;
    for (int i = 0; i < sum; i++)
    {
        cur = (LinkList)malloc(sizeof(LinkNode));
        if (!cur)
        {
            cout << "Memory allocation failed" << endl;
            exit(1);
        }
        Last->next = cur;
        cin >> cur->data;
        //  cur->next = Head;
        Last = cur; //更新尾指针
    }
    Last->next = Head;
}
void PrintCircList(LinkList &Head)
{
    LinkList p = Head->next;

    while (p != Head)
    {
        cout << p->data << ' ';
        p = p->next;
    }
    cout << '\n';
}

void FreeCircList(LinkList &Head)
{
    LinkList p = Head->next, q;

    while (p != Head)
    {
        q = p->next;
        free(p);
        p = q;
    }
    free(Head);
}
bool InsertCircList(LinkList &Head, int loc, DataType x)
{
    if (loc < 1)
        return false;
    LinkList p = Head;
    int i = 0;
    while (p->next != Head && i < loc - 1) //超出则插在表尾
    {
        p = p->next;
        i++;
    }
    LinkList cur = (LinkList)malloc(sizeof(LinkNode));
    cur->data = x;
    cur->next = p->next;
    p->next = cur;
    return true;
}
bool RemoveCircList(LinkList &Head, int loc)
{
    if (loc < 1)
        return false;
    LinkList p = Head, q;
    int i = 0;
    while (p->next != Head && i < loc - 1)
    {
        p = p->next;
        i++;
    }
    if (p->next == Head) //Loc太大
        return false;
    q = p->next;
    p->next = q->next;
    free(q);
    return true;
}
void JosephCircle(LinkList &Head, int begin, int gap, int sum)
{
    if (begin < 1 || gap < 1 || sum < 1)
        return;

    LinkList p = Head, q;
    for (int i = 0; i < begin - 1; i++) //快进到第begin-1个结点
        p = p->next;
    for (int i = 0; i < sum; i++)
    {
        for (int j = 0; j < gap - 1; j++) //报gap-1次数,到达被删结点前
        {
            p = p->next;
            if (p->next == Head) //跳过头结点
            {
                p = p->next;
            }
        }
        cout << p->next->data << ' ';
        q = p->next;
        p->next = q->next; //p在起始结点前，不用移动
        free(q);
    }
    cout << '\n';
}
LinkList MergeTwoOrderedLists(LinkList &a, LinkList &b)
{
    if (!a || b && a->data > b->data)
        swap(a, b);
    //*swap(a, b)等价于a += b - (b = a)
    if (a)
        a->next = MergeTwoOrderedLists(a->next, b);
    return a;
}
void DblLInitVal(DblList &Head, int sum)
{
    if (!(Head = new DblNode))
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
    }
    DblList cur, Pre = Head;
    cout << "Please input" << sum << "numbers" << endl;
    while (sum--)
    {
        cur = new DblNode;
        Pre->next = cur;
        cur->pred = Pre;
        cin >> cur->data;
        Pre = cur;
    }
    Pre->next = Head;
    Head->pred = Pre;
}
void DblLPrint(DblList &Head, int flag)
{
    DblList p = flag ? Head->next : Head->pred;
    while (p != Head)
    {
        cout << p->data << ' ';
        (flag) ? p = p->next : p = p->pred;
    }
    cout << endl;
}
DblList DblLSearchByVal(DblList &Head, DataType x, int flag)
{
    DblList p = flag ? Head->next : Head->pred;
    while (p != Head && p->data != x)
    {
        flag ? p = p->next : p = p->pred;
    }
    if (p == Head)
        return NULL;
    else
        return p;
}
DblList DblLSearchByLoc(DblList &Head, int loc, int flag)
{
    if (!loc)
        return Head;
    DblList p = flag ? Head->next : Head->pred;
    while (--loc && p != Head)
        p = flag ? p->next : p->pred;
    if (p == Head)
    {
        cout << "Loc error" << endl;
        return NULL;
    }
    else
        return p;
}
bool DblLInsert(DblList &Head, int loc, DataType x, int flag)
{
    DblList p, q = new DblNode;
    q->data = x;
    if (p = DblLSearchByLoc(Head, loc - 1, flag)) //到达被删除结点
    {
        if (flag)
        {
            q->next = p->next;
            q->next->pred = q;
            p->next = q;
            q->pred = p;
        }
        else
        {
            q->pred = p->pred;
            q->pred->next = q;
            p->pred = q;
            q->next = p;
        }
        return true;
    }
    else
        return false;
}
bool DblLDeleteByLoc(DblList &Head, int loc, int flag)
{
    DblList p, q;
    if (p = DblLSearchByLoc(Head, loc, flag)) //直接到达被删结点
    {
        p->pred->next = p->next;
        p->next->pred = p->pred;
        delete p;
        return true;
    }
    else
        return false;
}
void SListInit(SList &SL, int maxSize)
{
    SL.Elem = new SNode[maxSize + 1];
    if (!SL.Elem)
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
    }
    for (int i = 0; i < maxSize + 1; i++)
    {
        SL.Elem[i].link = i + 1;
        SL.Elem[i].data = 0;
    }
    SL.Elem[maxSize].link = 0; //*用来判断备用结点是否有剩余
    SL.size = 0;               //链表长度为0
}
int MallocSNode(SList &SL)
{
    int link = SL.Elem[0].link;
    SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
    if (link)
        SL.size++;
    else
        cout << "Capacity is full" << endl;
    return link;
}
void FreeSNode(SList &SL, int k)
{
    SL.Elem[k].link = SL.Elem[0].link;
    SL.Elem[0].link = k;
    SL.size--;
}
void SListInitVal(SList &SL, int size)
{
    int link;
    link = SL.Head = MallocSNode(SL); //保存首元结点下标
    cin >> SL.Elem[link].data;
    for (int i = 0; i < size - 1; i++)
    {
        link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
        if (!link)
            return;
        cin >> SL.Elem[link].data;
    }
    SL.Elem[link].link = 0; //相当于链表指向NULL
}
void PrintSList(SList &SL)
{
    int link = SL.Head;
    while (link)
    {
        cout << SL.Elem[link].data << ' ';
        link = SL.Elem[link].link;
    }
    cout << '\n';
}
void SLInsert(SList &SL, int loc, DataType x)
{
    if (loc < 1 || loc > SL.size + 1)
    {
        cout << "loc error" << endl;
        return;
    }
    int link = MallocSNode(SL), temp = SL.Head;
    if (!link)
        return;
    SL.Elem[link].data = x;
    if (loc == 1)
    {
        SL.Elem[link].link = SL.Head;
        SL.Head = link;
    }
    else
    {
        for (int i = 0; i < loc - 2; i++)
            temp = SL.Elem[temp].link;
        SL.Elem[link].link = SL.Elem[temp].link;
        SL.Elem[temp].link = link;
    }
}
void SLRemove(SList &SL, int loc)
{
    int temp = SL.Head, Temp2;
    if (loc < 1 || loc > SL.size)
    {
        cout << "Loc error" << endl;
        return;
    }
    if (loc == 1)
    {
        SL.Head = SL.Elem[temp].link;
        FreeSNode(SL, temp);
    }
    else
    {
        for (int i = 0; i < loc - 2; i++)
            temp = SL.Elem[temp].link;
        Temp2 = SL.Elem[temp].link;
        SL.Elem[temp].link = SL.Elem[Temp2].link;
        FreeSNode(SL, Temp2);
    }
}
void Input(Polynomial &PL, double C[], int E[], int num)
{
    Polynomial p, prev, Dummyhead = new Term;
    for (int i = 0; i < num; i++)
    {
        p = Dummyhead->next;
        prev = Dummyhead;
        while (p && p->exp > E[i])
        {
            prev = p;
            p = p->next;
        }
        if (p && p->exp == E[i])
            p->coef += C[i];
        else
        {
            Polynomial newTerm = new Term(C[i], E[i], p);
            prev->next = newTerm;
        }
    }
    PL = Dummyhead->next;
}
void PrintPoly(Polynomial &PL)
{
    Polynomial p = PL;
    int flag = 0;
    while (p)
    {
        if (!p->coef)
            p = p->next;
        else
        {
            if (flag && p->coef > 0)
                cout << '+';
            flag = 1;
            if (p->coef != 1)
                cout << p->coef;
            else if (!p->exp)
                cout << '1';
            if (p->exp == 1)
                cout << 'x';
            else if (p->exp)
                cout << "x^" << p->exp;
            p = p->next;
        }
    }
    cout << endl;
}
Polynomial AddPolynomial(Polynomial &A, Polynomial &B)
{
    if (!A || (B && A->exp < B->exp))
        swap(A, B);
    else if (B && A->exp == B->exp)
    {
        if (A->coef + B->coef)
        {
            A->coef += B->coef;
            A->next = AddPolynomial(A->next, B->next);
        }
        else
            return AddPolynomial(A->next, B->next);
    }
    if (A && B && A->exp > B->exp)
        A->next = AddPolynomial(A->next, B);
    return A;
}
Polynomial MultiPolynomial(Polynomial &A, Polynomial &B)
{
    Polynomial PA = A, PB = B, Head = new Term, prev, p;
    int temp;
    while (PA)
    {
        PB = B;
        while (PB)
        {
            prev = Head;
            p = Head->next;
            while (p && p->exp > PA->exp + PB->exp) //找到插入位置
            {
                prev = p;
                p = p->next;
            }
            if (temp = PA->coef * PB->coef)
            {
                if (p && PA->exp + PB->exp == p->exp) //合并项
                {
                    if (temp = PA->coef * PB->coef + p->coef)
                        p->coef = temp;
                    else
                        prev->next = p->next; //消掉
                }
                else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
                {
                    Polynomial newTerm = new Term(temp, PA->exp + PB->exp);
                    newTerm->next = p;
                    prev->next = newTerm;
                }
            }
            PB = PB->next;
        }
        PA = PA->next;
    }
    return Head->next;
}
double EvalPolynomial(Polynomial &PL, int x)
{
    double result = 0;
    Polynomial p = PL;
    while (p)
    {
        result += p->coef * pow(x, p->exp);
        p = p->next;
    }
    return result;
}
void DerivePolynomial(Polynomial &PL)
{
    Polynomial p, *pp = &PL;
    while (p = *pp)
    {
        if (!p->exp)
        {
            *pp = p->next;
            delete p;
        }
        else
        {
            p->coef *= p->exp;
            p->exp--;
            pp = &p->next;
        }
    }
}
