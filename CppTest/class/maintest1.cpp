/*
 * @Author: fengsc
 * @Date: 2021-10-23 14:49:58
 * @LastEditTime: 2022-02-11 14:00:53
 */
#include <iostream>
#include <bitset>
#ifdef _DEBUG 

#define LOG(format, ...) printf("LOG:" format, ##__VA_ARGS__)
#define LOG_M(format, ...) fprintf(stderr, "\033[1;35m  LOG_G(%s:%d):\t\033[0m" format, __func__, __LINE__, ##__VA_ARGS__)
#define LOG_R(format, ...) fprintf(stderr, "\033[1;31m  LOG_R(%s,%d):\t\033[0m" format, __func__, __LINE__, ##__VA_ARGS__)
#else
#define LOG(format, ...)
#define LOG_M(format, ...)
#define LOG_R(format, ...)
#endif

//#include "src/typeName.cpp"
using namespace std;
int main()
{
    int i = 0;
    LOG("hello %d\n", i++);
    /* int ai[3][4] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    int a[4] = {1, 2, 3, 4};
   // int(&row)[4] = ai[1]; //row绑定到ai[1]数组上
   auto &row=ai[1];
    int* p = ai[1];
    //decltype(a) q=a;
    auto q1 = (int(*)[4])a;
    cout << row[0] << p[0] << *q1 << endl;
    for(auto &row:ai)
    {
        for(auto col:row)
        {
            cout<<col<<' ';
        }
        cout<<endl;
    }
    for(auto p=begin(ai);p!=end(ai);p++)
    {
        for(auto q=begin(*p);q!=end(*p);q++)
        {cout<<*q<<' ';}
        cout<<endl;
    }
    cout << type_name<decltype(a)>() << endl;*/
    bitset<32> bitvec1(0xbeef); //小于高位补零，大于截高
    bitset<32> bitvec2(0ULL);   //0 :unsigned  long  long
    bitset<32>
        bitvec3(~0ULL);
    LOG_R("hello %d\n", i++);
    bitset<32> bitvec4("1100"); //bitset<32>bitvec4;
    string s = "1111111110000000001111111";
    bitset<32> bitvec5(s, 5, 4);
    cout << bitvec1 << endl
         << bitvec2 << endl
         << bitvec3 << endl
         << ~bitvec4 << endl
         << (bitvec4 & bitvec5) << endl;
    LOG_M("hello %d\n", i++);
}