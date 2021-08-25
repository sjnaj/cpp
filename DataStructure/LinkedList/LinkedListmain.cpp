/*
 * @Author: fengsc
 * @Date: 2021-07-21 21:19:43
 * @LastEditTime: 2021-08-11 22:38:29
 */
#include "LinkedList.cpp"
#define MAX 5
int main()
{
  // LinkList L1, L2, L3;
  // InitValWithoutHeader(L1,MAX);
  // InitValWithoutHeader(L2,MAX);
  //L3 = MultiplyTwoNumbers(L1, L2);
  Polynomial L;
  double C[MAX] = {0, 1, 2, 3, 4};
  int E[MAX] = {0, 1, 2, 3, 0};
  Input(L, C, E, MAX);
  PrintPoly(L);
  DerivePolynomial(L);
  PrintPoly(L);
  //InitValue(Head2, MAX);
  //Head1->next = MergeTwoOrderedLists(Head1->next, Head2->next);
  //  RemoveCircList(Head,2);
  //   PrintCircList(Head);
  /* if(RemoveByVal2(Head1,1));
  cout<<"Delete sucessful"<< endl;
  if(Insert2(Head1,1,10));
  cout<<"Insert sucessful" << endl;*/
  return 0;
}