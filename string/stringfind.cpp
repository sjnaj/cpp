/*
 * @Author: fengsc
 * @Date: 2021-05-22 23:47:47
 * @LastEditTime: 2021-06-30 00:29:00
 */
#include <iostream>
using namespace std;
#include <string>
void func() {}
int main()
{
    string str1="Hello";
    string str2="elh";
    int i=1;
    i++;i++;
    cout <<i<<endl;
    cout<<str1.find_first_of(str2,1)<<endl;
    return 0;
}