/*
 * @Author: fengsc
 * @Date: 2021-12-17 21:49:00
 * @LastEditTime: 2021-12-18 01:31:47
 */
#include "Hashtable.h"
#include <ctime>
using namespace std;
int main()
{
    srand(time(NULL));
   
    Hashtable<int>HT(10);
     for(int i=0; i<9;i++)
     HT.insert(rand()%10000);
     HT.print();
     HT.remove(4376);
     Hashtable<string>HT2(10);
     for(int i=0; i<9; i++)
     HT2.insert(to_string(rand()%10000));
     HT2.print();

    


}