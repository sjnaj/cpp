/*
 * @Author: fengsc
 * @Date: 2021-07-11 21:36:57
 * @LastEditTime: 2021-08-13 16:31:22
 */

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <algorithm>
#define MAXN 30
typedef int DataType;
typedef struct
{
    DataType *data;
    int Maxsize, num;
} SeqList;
using namespace std;
void InitList(SeqList &, int); //无初值
void ClearList(SeqList &, int);
void InitVal(SeqList &); //有初值
int Search(SeqList &, DataType);
bool Insert(SeqList &, int, DataType &);
bool DeleteByLoc(SeqList &, int);        //按位置删除
bool DeleteByVal(SeqList &, DataType &); //按值删除
void Sort(SeqList &);                    //从小到大排序
void Print(SeqList &);
void MemReSet(SeqList &);                       //大于%80容量扩大一倍，小于%20容量减小一倍
bool JudgeOrder(SeqList &);                      //判断是否有序
void MergeList(SeqList &, SeqList &, SeqList &); //结果是排序后的
bool DeleteSameUnordered(SeqList &);
bool DeleteSameOrdered(SeqList &);
void FindMaxAndMin(SeqList &);
/*
以下三个函数的结果都存在前一个线性表里,如果不想改变原来的线性表可以深拷贝后用拷贝的线性表作为参数,并去掉形参的&
*/
void Intersection(SeqList &, SeqList &); //求并集(集合没有重复元素)
void Union(SeqList &, SeqList &);        //求交集
void FindSameEle(SeqList &, SeqList &);  //（可以有重复元素）

void DeepCopy(SeqList &, SeqList); //深拷贝

void Reverse(SeqList &,int,int);//reverse in situ

//位置都是从1开始
