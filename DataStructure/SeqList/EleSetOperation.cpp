/*
 * @Author: fengsc
 * @Date: 2021-07-12 16:32:25
 * @LastEditTime: 2021-07-17 19:33:53
 */
#include <iostream>
#include "SeqList.h"
#include "SeqList.cpp"
#define Length 5
using namespace std;
/*int Intersection(SeqList, SeqList);
int Union(SeqList, SeqList);
void DeepCopy(SeqList &, SeqList);*/
int RetVal;
int main()
{
    SeqList A, B, CpA, CpB, CpTemp;
    InitList(A, MAXN);
    InitList(B, MAXN);
    InitVal(A, Length);
    InitVal(B, Length);
    MemReSet(A);
  // Intersection(A, B);
  // Print(A);
   FindSameEle(A, B);
  Print(A);
   
    return 0;
}
/*int Intersection(SeqList A, SeqList B)
{
    if (!A.num || !B.num)
        return false;
    int i;
    for (i = 0; i < A.num;)
    {
        if (!Search(B, A.data[i]))

            RetVal = DeleteByLoc(A, i + 1);
        else
            i++;
    }
    Sort(A);
    for (i = 0; i < A.num; i++)
        cout << A.data[i] << endl;
    if (A.num)
        return true;
    else
        return false;
}
int Union(SeqList A, SeqList B)
{
    if (!A.num && !B.num)
        return false;
    int i;
    for (i = 0; i < B.num; i++)
    {
        if (!Search(A, B.data[i]))

            RetVal = Insert(A, A.num, B.data[i]);
    }
    Sort(A);
    for (i = 0; i < A.num; i++)
        cout << A.data[i] << endl;
    if (A.num)
        return true;
    else
        return false;
}
void DeepCopy(SeqList &CpTemp, SeqList A)
{
    CpTemp.num = A.num;
    CpTemp.data = new DataType[Length];
    for (int i = 0; i < A.num; i++)
    {
        CpTemp.data[i] = A.data[i];
    }
}*/