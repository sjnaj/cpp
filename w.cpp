/*
 * @Author: fengsc
 * @Date: 2021-05-27 16:05:35
 * @LastEditTime: 2021-10-14 18:46:34
 */
#include <iostream>
#include <limits.h>
#include <string>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <utility>
using namespace std;
class Base
{
public:
   // void func();
virtual ~Base() = default;
};
class Derive : public Base
{
public:
    virtual void func2(){cout << "Derive"<< endl;}
    void display()
    {
        cout << this << endl;
    }
   virtual ~Derive() = default;
};
class Derive2 : public Derive
{
public:
 void func2() override {std::cout <<"ok"<< endl;}
};
int main()
{
    Derive d;
    d.display();
    cout << &d << endl;
}

/*int main()
{
    pair<string, double> product1("tomatoes", 3.25);
    pair<string, double> product2;
    pair<string, double> product3;

    product2.first = "lightbulbs"; // type of first is string
    product2.second = 0.99;        // type of second is double

    product3 = make_pair("shoes", 20.00);

    cout << "The price of " << product1.first << " is $" << product1.second << "\n";
    cout << "The price of " << product2.first << " is $" << product2.second << "\n";
    cout << "The price of " << product3.first << " is $" << product3.second << "\n";
    int i=4;
   i*=i;
    cout <<i<<endl;
    return 0;
}*/