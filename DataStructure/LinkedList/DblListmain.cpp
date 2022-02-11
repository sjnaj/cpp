/*
 * @Author: fengsc
 * @Date: 2021-07-27 21:58:52
 * @LastEditTime: 2021-07-29 23:03:39
 */
#include "LinkedList.cpp"
#define Length 5
int main()
{
    DblList L1,L2;
    DblLInitVal(L1,Length);
    DblLInitVal(L2,Length);
    cout<<DblLSearchByLoc(L1,2,0)->data<<endl;
  DblLInsert(L1,1,10,1);
  DblLDeleteByLoc(L1,2,0);
    DblLPrint(L1,1);
    DblLPrint(L2,0);
    return 0;
}