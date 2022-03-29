/*
 * @Author: fengsc
 * @Date: 2022-02-11 16:09:12
 * @LastEditTime: 2022-02-11 16:11:15
 */
#include <iostream>
#include <set>
using namespace std;
int main()
{
   set<int>st({1,2,3,4});
   set<int>st1({1,2,3,4});
   st.erase(st1.begin());
   cout<<st.size()<<endl;
}