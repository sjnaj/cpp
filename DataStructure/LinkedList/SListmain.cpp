/*
 * @Author: fengsc
 * @Date: 2021-07-30 17:48:05
 * @LastEditTime: 2021-07-30 22:51:45
 */
#include "LinkedList.cpp"
#define MAXN 5
int main(int argc, char *argv[])
{
    SList SL;
    SListInit(SL, MAXN);
    SListInitVal(SL, MAXN-1);
    SLInsert(SL, 5, 66);
    SLRemove(SL,1);
    PrintSList(SL);
    SListFree(SL);
    return 0;
}
