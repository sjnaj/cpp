/*
 * @Author: fengsc
 * @Date: 2021-07-17 23:09:49
 * @LastEditTime: 2021-07-30 17:24:43
 */
#include <iostream>
#include <iomanip>
using namespace std;
int main( )
{
  int a[4]={0,1,2,3};
  int i=0;
  a[i++]=a[i++]+a[i++];
  cout<<i<<a[--i]<<endl;return 0;
}
