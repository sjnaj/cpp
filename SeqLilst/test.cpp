/*
 * @Author: fengsc
 * @Date: 2021-07-15 22:16:00
 * @LastEditTime: 2021-07-15 23:25:04
 */
#include <iostream>
#include "SeqList.h"
#include "SeqList.cpp"
#define Length 5
using namespace std;
int main()
{
    SeqList A;
        InitList(A, MAXN);
    InitVal(A, Length);
  //  DeleteSameUnordered(A);
  DeleteSameOrdered(A);
    Print(A);
    return 0;
}