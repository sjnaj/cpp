/*
 * @Author: fengsc
 * @Date: 2021-08-11 22:53:28
 * @LastEditTime: 2021-08-17 00:00:39
 */
#include <iostream>
#include <string>
#include <limits.h>
#include <stack>
#include <list>
#include <vector>
#include <cstdlib>
#include <math.h>
using namespace std;
typedef int DataType;
/*Sequence Stack*/
class SeqStack
{
    public:
    DataType *elem;
    int maxSize, top;
    SeqStack(int size) : maxSize(size), top(-1), elem(new DataType[size]) {}
    SeqStack(const vector<DataType> &value) //利用vector初始化
    {
        maxSize = value.size();
        top = maxSize - 1;
        elem = new DataType[maxSize];
        for (int i = 0; i < maxSize; i++)
            elem[i] = value[i];
    }
    ~SeqStack() { delete[] elem; }//释放内存
} ;
bool Push(SeqStack &S, DataType x); //入栈
bool Pop(SeqStack &S);              //出栈，可以引用参数获得栈顶元素
DataType Top(SeqStack &S);          //不改变栈，满时返回INT_MAX
DataType TopAndPop(SeqStack &S);    //出栈并返回栈顶元素
bool IsEmpty(SeqStack &S);
bool IsFull(SeqStack &S);
void ReverseArrayUsingStack(DataType C[], int size);
void MakeEmpty(SeqStack &S);
void FreeSeqStack(SeqStack &S);
bool JudgeStackShuffle(stack<int, list<int>> &A, stack<int, list<int>> &B);
void PrintStack(SeqStack &S);
void SortUsingStack(SeqStack &S);
void SysConvert(string s, int init, int k);
bool JudgeParenthesisMatching(string s);
/*Double Stack*/
typedef struct
{
    int top[2], bot[2], maxSize;
    DataType *elem;
} DblStack;
void InitStack(DblStack &S, int size);
bool Push(DblStack &S, int flag);
bool Pop(DblStack &S, DataType x, int flag);
DataType Top(DblStack &S, int flag);
DataType TopAndPop(DblStack &S, int flag);
void MakeEmpty(DblStack &S);
