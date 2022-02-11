/*
 * @Author: fengsc
 * @Date: 2021-08-11 22:53:37
 * @LastEditTime: 2021-10-27 01:31:53
 */
#ifndef _Stack_H
#include "Stack.h"
#endif // !Stack
/*void InitStack(SeqStack &S, int size)
{
    if (!(S.elem = new DataType[size]))
        cout << "Memory allocation failed" << endl;
    S.maxSize = size;
    S.top = -1;
}*/
bool Push(SeqStack &S, DataType x)
{
    if (IsFull(S))
    {
        cout << "Full Stack" << endl;
        return false;
    }
    S.elem[++S.top] = x;
    return true;
}
bool Pop(SeqStack &S)
{
    if (IsEmpty(S))
    {
        cout << "Empty stack" << endl;
        return false;
    }
    S.top--;
    return true;
}
DataType Top(SeqStack &S)
{
    if (IsEmpty(S))
    {
        cout << "Empty stack" << endl;
        return INT_MAX;
    }
    return S.elem[S.top];
}
DataType TopAndPop(SeqStack &S)
{
    if (IsEmpty(S))
    {
        cout << "Empty stack" << endl;
        return INT_MAX;
    }
    return S.elem[S.top--];
}
bool IsFull(SeqStack &S)
{
    return (S.top == S.maxSize - 1);
}
bool IsEmpty(SeqStack &S)
{
    return (S.top == -1);
}
void ReverseArrayUsingStack(DataType C[], int size)
{
    SeqStack S(size);
    int i;
    for (i = 0; i < size; i++)
        Push(S, C[i]);  
    for (i = 0; i < size; i++)
        C[i] = Top(S);
}
void MakeEmpty(SeqStack &S)
{
    S.top = -1;
}
void PrintStack(SeqStack &S)
{
    while (!IsEmpty(S))
        cout << TopAndPop(S) << ' ';
    cout << endl;
}
void SortUsingStack(SeqStack &S)
{
    SeqStack T(S.maxSize);
    while (!IsEmpty(S))
        Push(T, TopAndPop(S));
    while (!IsEmpty(T))
    {
        int k = TopAndPop(T);
        while (!IsEmpty(S) && k > Top(S))
            Push(T, TopAndPop(S));
        Push(S, k);
    }
}

void InitStack(DblStack &S, int size)
{
    S.top[0] = S.bot[0] = -1;
    S.top[1] = S.bot[1] = size;
    S.elem = new DataType[size];
    S.maxSize = size;
}
bool Push(DblStack &S, DataType x, int flag)
{
    if (S.top[0] + 1 == S.top[1])
    {
        cout << "Full Stack" << endl;
        return false;
    }
    if (flag)
        S.elem[--S.top[1]] = x;
    else
        S.elem[++S.top[0]] = x;
    return true;
}
bool Pop(DblStack &S, int flag)
{
    if (S.top[flag] == S.bot[flag])
    {
        cout << "Empty stack" << endl;
        return false;
    }
    if (flag)
        S.top[1]++;
    else
        S.top[0]--;
    return true;
}
DataType Top(DblStack &S, int flag)
{
    if (S.top[flag] == S.bot[flag])
    {
        cout << "Empty stack" << endl;
        return INT_MAX;
    }
    if (flag)
        return S.elem[S.top[1]];
    else
        return S.elem[S.top[0]];
}
DataType TopAndPop(DblStack &S, int flag)
{
    if (S.top[flag] == S.bot[flag])
    {
        cout << "Empty stack" << endl;
        return INT_MAX;
    }
    if (flag)
        return S.elem[S.top[1]++];
    else
        return S.elem[S.top[0]--];
}
void FreeStack(DblStack &S)
{
    S.top[0] = S.bot[0] = -1;
    S.top[1] = S.bot[1] = S.maxSize;
    delete[] S.elem;
}
void MakeEmpty(DblStack &S)
{
    S.top[0] = S.bot[0] = -1;
    S.top[1] = S.bot[1] = S.maxSize;
}
bool JudgeStackShuffle(stack<int, list<int>> &A, stack<int, list<int>> &B)
{
    stack<int> T, S;

    while (B.size()) //将B逆置放在T里
    {
        T.push(B.top());
        B.pop();
    }
    while (A.size())
    {
        S.push(A.top()); //入栈
        A.pop();
        while (S.size() && S.top() == T.top()) //按给定序列出栈
        {
            S.pop();
            T.pop();
        }
    }
    return S.empty();
}
void SysConvert(string s, int init, int k)
{
    char *t;
    long num = strtol(s.c_str(), &t, init);
    SeqStack S(int(log(num) / log(k)) + 1);
    while (num)
    {
        Push(S, num % k);
        num /= k;
    }
    PrintStack(S);
}
bool JudgeParenthesisMatching(string s)
{
    SeqStack S(s.size());
    for (int i = 0; i < s.size(); i++)
    {
        if ('(' == s[i] || '[' == s[i] || '{' == s[i])
            Push(S, s[i]);
        else if (')' == s[i] || ']' == s[i] || '}' == s[i])
        {
            if (!IsEmpty(S) && ((')' == s[i] && Top(S) == '(') || (']' == s[i] && Top(S) == '[') || ('}' == s[i] && Top(S) == '{')))
                Pop(S);
            else
                return false;
        }
    }
    return IsEmpty(S);
}
