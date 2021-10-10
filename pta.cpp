/*
 * @Author: fengsc
 * @Date: 2021-06-24 21:15:10
 * @LastEditTime: 2021-08-03 20:50:28
 */
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;
int main()
{
    std::vector<int> demo{ 1,2,3,4,5 };
    //删除 2、3
    demo.reserve(10);
   
    cout << "size is :" << demo.size() << endl;
    cout << "capacity is :" << demo.capacity() << endl;
    demo.shrink_to_fit();
     auto iter = remove(begin(demo), end(demo),3);
    cout<<*iter<<endl;
        cout << "capacity is :" << demo.capacity() << endl;
    for (auto i = begin(demo); i < iter; i++) {
        cout << *i << " ";
    }
    return 0;
}
 