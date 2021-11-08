/*
 * @Author: fengsc
 * @Date: 2021-11-04 15:57:40
 * @LastEditTime: 2021-11-08 12:21:54
 */
#include "BinaryTree.cpp"
#include "/home/fengsc/Desktop/cpp/CppTest/class/src/timeCount.h"
#include <ctime>
using namespace std;

#define select(x) \
({\
int j=0;\
    rand() % x;\
    i++;\
    10;\
})\
/*#define select(x) \
(\
    rand() % x,\
    i++\
)*/
//#define select(x)   {  rand() % x;i+1; }
/*#define select(x)   \
    do              \
    {               \
        rand() % x; \
    } while (0)*/
int main()
{

    for (int i = 0; i < 100; i++)
    {
        if(1)
        select(2);
        cout<<select(2)<<endl;
    }
    }