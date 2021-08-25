/*
 * @Author: fengsc
 * @Date: 2021-08-12 17:34:27
 * @LastEditTime: 2021-08-13 21:11:35
 */
#ifndef _LinkStack_H//包含头文件
#include "LinkStack.h"
#endif //  !_LinkStack_H
void InitStack(LinkStack &S)
{
    S = nullptr;
}
void Push(LinkStack &S, DataType x)
{
    LinkStack p = new LinkNode(x, S);
    S = p;
}
bool Pop(LinkStack &S)
{
    if (!S)
        return false;
    LinkStack p = S->next;
    delete S;
    S = p;
    return true;
}
DataType Top(LinkStack &S)
{
    if (!S)
        return INT_MAX;
    return S->data;
}
DataType TopAndPop(LinkStack &S)
{
    if (!S)
        return INT_MAX;
    LinkStack p = S->next;
    int temp = S->data;
    delete S;
    S = p;
    return temp;
}
bool IsEmpty(LinkStack &S)
{
    return S==NULL;
}
void MakeEmpty(LinkStack &S)
{
    LinkStack p;
    while (!IsEmpty(S))
    Pop(S);
}