/*
 * @Author: fengsc
 * @Date: 2021-05-27 16:05:35
 * @LastEditTime: 2021-06-08 19:20:52
 */
#include <iostream>
using namespace std;
int &plus10(int &r) {
    int m = r + 10;
    return m;  //返回局部数据的引用
}
int main() {
    int num1 = 10;
    int num2 = plus10(num1);
    cout << num2 << endl;
    int &num3 = plus10(num1);
    int &num4 = plus10(num3);
    cout << num3 << " " << num4 << endl;
    return 0;
}