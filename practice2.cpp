/*
 * @Author: fengsc
 * @Date: 2021-05-21 22:43:59
 * @LastEditTime: 2021-05-21 23:12:51
 */
#include<iostream>
using namespace std;
class A{
public:
    A(){};//防止初始化时将复制构造函数当作构造函数而报错。
    A(A & a){
        cout<<"Copy constructor called"<<endl;
    }
};
void Func(A a,int b){ cout<<b<<endl;}
int main(){
    A a;
    Func(a,1);
    return 0;
}