/*
 * @Author: fengsc
 * @Date: 2021-07-15 22:16:00
 * @LastEditTime: 2021-07-18 21:03:45
 */
#include <iostream>
//#include "SeqList.h"
#include "SeqList.cpp"
#define Length 5
using namespace std;cir
void Merge(SeqList &, int);
int main()
{
  SeqList A;
  InitList(A, MAXN);
  InitVal(A, Length);
  //  DeleteSameUnordered(A);
  // Reverse(A, 2, 4);
  Merge(A, 3);
  Print(A);
  return 0;
}
void Merge(SeqList &L, int n)
{
  if (!L.num || L.num == 1)
    return;
  Reverse(L, n + 1, L.num);
  int i, j = n, k = 0, temp;
  while (j < L.num)
  {
    if (L.data[j] > L.data[j - 1])
      return;
    temp = L.data[j];
    for (i = j - 1; i >= k; i--)
    {
      if (L.data[i] > temp)
        L.data[i + 1] = L.data[i];
      else
        break;
    }
    L.data[i + 1] = temp;
    k = i + 1;
    j++;
  }
}
