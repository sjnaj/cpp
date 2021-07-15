/*
 * @Author: fengsc
 * @Date: 2021-07-11 21:34:57
 * @LastEditTime: 2021-07-12 17:23:09
 */
#include <iostream>
#include "SeqList.h"
#include "SeqList.cpp"
using namespace std;
int main()
{
    SeqList L;
    int Order, Loc, Num, RetVal;
    InitList(L, MAXN);
    cout << "1:Insert 2:DelByLoc 3:DelByVal 4:Print 5:Sort 6:Search 7:clear 8:ELeSum 9:InitValue press 0 to quit" << endl;
    while (1)
    {
        cin >> Order;
        if (!Order)
            break;
        getchar();
        switch (Order)
        {
        case 1:
            cin >> Loc >> Num;
            if (Insert(L, Loc, Num))
                cout << "Insert sucessful" << endl;
            else
                cout << "Insert failed" << endl;
            break;
        case 2:
            cin >> Loc;
            if (DeleteByLoc(L, Loc))
                cout << "Deleter sucessful" << endl;
            else
                cout << "Delete failed" << endl;
            break;
        case 3:
            cin >> Num;
            if (DeleteByLoc(L, Loc))
                cout << "Deleter sucessful" << endl;
            else
                cout << "Delete failed" << endl;
            break;
        case 4:
            Print(L);
            break;
        case 5:
            Sort(L);
            break;
        case 6:
            cin >> Num;
            if (RetVal = Search(L, Num))

                cout << "the seq of Num is " << RetVal << endl;
            else
                cout << "not found" << endl;
            break;
        case 7:
            ClearList(L);
            break;
        case 8:
            cout << Length(L) << endl;
            break;
        case 9:
        cout <<"the sum is:";
            cin >> Num;
            InitVal(L, Num);break;
        default:
            break;
        }
    }
    return 0;
}