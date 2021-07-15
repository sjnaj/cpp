/*
 * @Author: fengsc
 * @Date: 2021-07-11 21:36:57
 * @LastEditTime: 2021-07-15 23:21:39
 */

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
using namespace std;
#define MAXN 30
typedef int DataType;
 typedef struct
{
    DataType *data;
    int Maxsize, num;
} SeqList;
void InitList(SeqList &, int);//无初值
void ClearList(SeqList &,int);
void InitVal(SeqList &);//有初值
int Search(SeqList &, DataType);
int Insert(SeqList &, int, DataType &);//
int DeleteByLoc(SeqList &, int);        //按位置删除
int DeleteByValue(SeqList &, DataType &); //按值删除
void Sort(SeqList &);  
void Print(SeqList &) ;        //从小到大排序
void MemReSet(SeqList &L);
int  JudgeOrder(SeqList &);
void MergeOrderList(SeqList &,SeqList &,SeqList &);//无序的也可以，并会有提示
int DeleteSameUnordered(SeqList &);
int DeleteSameOrdered(SeqList &);
//位置都是从1开始