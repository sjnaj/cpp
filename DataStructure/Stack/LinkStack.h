/*
 * @Author: fengsc
 * @Date: 2021-08-12 17:34:57
 * @LastEditTime: 2021-08-16 21:49:10
 */
#include <iostream>
#include <string>
#include <limits.h>
using namespace std;
typedef int DataType;
typedef struct node
{
    DataType data;
    struct node *next;
    node(DataType x):data(x), next(nullptr){}
    node(DataType x,node *ptr):data(x),next(ptr){}
    node(node *ptr):data(0),next(ptr){}
    node():data(0),next(nullptr){}
}LinkNode,*LinkStack;
void InitStack(LinkStack &S);
void Push(LinkStack &S, DataType x);
bool Pop(LinkStack &S);
DataType Top(LinkStack &S);
DataType TopAndPop(LinkStack &S);
void MakeEmpty(LinkStack &S);
bool IsEmpty(LinkStack &S);

