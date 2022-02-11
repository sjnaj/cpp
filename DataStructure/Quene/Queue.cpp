/*
 * @Author: fengsc
 * @Date: 2021-08-16 20:44:03
 * @LastEditTime: 2021-08-18 13:35:46
 */
#ifndef _Queue_H
#include "Queue.h"
#endif // !_Queue_H
bool EnQueue(CircQueue &Q, DataType x)
{
    if (IsFull(Q))
        return false;
    Q.elem[Q.back] = x;
    Q.back = (Q.back + 1) % Q.maxSize;
    return true;
}
int DeQueue(CircQueue &Q)
{
    if (IsEmpty(Q))
        return INT_MAX;
    int temp = Q.front;
    Q.front = (Q.front + 1) % Q.maxSize;
    return Q.elem[temp];
}
int GetFront(CircQueue &Q)
{
    if (IsEmpty(Q))
        return INT_MAX;
    return Q.elem[Q.front];
}

bool IsEmpty(CircQueue &Q)
{
    return Q.front == Q.back;
}
bool IsFull(CircQueue &Q)
{
    return (Q.back + 1) % Q.maxSize == Q.front;
}
void Print(CircQueue &Q)
{
    int temp;
    while ((temp = DeQueue(Q)) != INT_MAX)
        cout << temp << ' ';
    cout << endl;
}
void EnQueue(LinkQueue &Q, DataType x)
{
    LinkNode *cur = new LinkNode(x);
    if (!Q.back)
        Q.back = Q.front = cur;
    else
    {
        Q.back->next = cur;
        Q.back = cur;
    }
}
bool IsEmpty(LinkQueue &Q)
{
    return Q.front == NULL;
}
int DeQueue(LinkQueue &Q)
{
    if (IsEmpty(Q))
        return INT_MAX;
    int x = Q.front->data;
    LinkNode *p = Q.front;
    Q.front = Q.front->next;
    delete p;
    return x;
}
int GetFront(LinkQueue &Q)
{
    if (IsEmpty(Q))
        return INT_MAX;
    return Q.front->data;
}
int QueueSize(LinkQueue &Q)
{
    LinkNode *p = Q.front;
    int size = 0;
    while (p)
    {
        p = p->next;
        size++;
    }
    return size;
}
void Print(LinkQueue &Q)
{
    int t;
    while ((t = DeQueue(Q)) != INT_MAX)
        cout << t << ' ';
    cout << endl;
}
void PrintTriangle(int n)
{
    LinkQueue Q;
    EnQueue(Q, 1);
    EnQueue(Q, 1);
    for (int i = 1, t = 0; i <= n; i++)
    {
        EnQueue(Q, 0); //每一行之间添加0，便于计算最右侧的数
        for (int j = 1; j <= i + 2; j++)
        {
            EnQueue(Q, GetFront(Q) + t); //计算下一行并入列
            t = DeQueue(Q);              //保留以计算下一个下一行的元素
            if (j == 1)//保留行前空格
                cout << setw(n - i + 2) << setiosflags(ios::right)<< setfill(' ') <<t<<' ';
            else if (j != i + 2) //输出本行，除了添加的0
                cout << setw(2) <<setiosflags(ios::left)<< t << ' ';
        }
        cout << endl;
    }
}
