/*
 * @Author: fengsc
 * @Date: 2021-08-16 20:42:32
 * @LastEditTime: 2021-08-18 12:50:31
 */
#include <iostream>
#include <limits.h>
#include <vector>
#include <queue>
#include <iomanip>
using namespace std;
typedef int DataType;
/*Circular Queue*/
//class CircQueue;                        //前向声明，作为EnQuene的形参
//bool EnQueue(CircQueue &Q, DataType x); //结构体调用，需在其之前声明；
class CircQueue
{
public:
  friend bool EnQueue(CircQueue &Q, DataType x); //类和非成员函数友元不需要提前声明
  DataType *elem;
  int maxSize;
  int front, back;
  CircQueue(int size) : maxSize(size + 1), front(0), back(0), elem(new DataType[size + 1]) {}
  /*注意预留一个位置*/
  CircQueue(vector<DataType> &value)
  {
    maxSize = value.size() + 1; //不能调用另一个构造函数，因为这一个还没构造完
    elem = new DataType[maxSize];
    front = back = 0;
    for (int i = 0; i < value.size(); i++)
      EnQueue(*this, value[i]); //全局函数（已声明或友元）可直接调用，与成员函数同名时前加::
  }
  ~CircQueue()
  {
    delete[] elem;
  }
};
bool EnQueue(CircQueue &Q, DataType x); //结构体调用，需在其之前声明；
bool IsEmpty(CircQueue &Q);
bool IsFull(CircQueue &Q);
int DeQueue(CircQueue &Q);
int GetFront(CircQueue &Q);
void Print(CircQueue &Q);
/*Linked Queue*/
class LinkNode
{
public:
  DataType data;
  LinkNode *next;
  LinkNode() : next(nullptr) {}
  LinkNode(DataType x) : data(x), next(nullptr) {}
  LinkNode(DataType x, LinkNode *ptr) : data(x), next(ptr) {}
};
class LinkQueue
{
public:
  friend void EnQueue(LinkQueue &Q, DataType x);     
  LinkNode *front, *back;
  LinkQueue() : front(nullptr), back(nullptr) {}
  LinkQueue(vector<int> value)
  {
    front = back = NULL;
    for (int i = 0; i < value.size(); i++)
      EnQueue(*this, value[i]);
  }
};
//void EnQueue(LinkQueue &Q, DataType x);
int DeQueue(LinkQueue &Q);
int GetFront(LinkQueue &Q);
bool IsEmpty(LinkQueue &Q);
int QueueSize(LinkQueue &Q);
void Print(LinkQueue &Q);
void PrintTriangle(int n);
