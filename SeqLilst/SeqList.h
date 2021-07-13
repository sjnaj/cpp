/*
 * @Author: fengsc
 * @Date: 2021-07-11 21:36:57
 * @LastEditTime: 2021-07-13 10:45:58
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
int Length(SeqList &);
int Search(SeqList &, DataType);
int Insert(SeqList &, int, DataType &);//
int DeleteByLoc(SeqList &, int);        //按位置删除
int DeleteByValue(SeqList &, DataType &); //按值删除
void Sort(SeqList &);  
void Print(SeqList &) ;        //从小到大排序
//位置都是从1开始