/*
 * @Author: fengsc
 * @Date: 2021-05-27 16:05:35
 * @LastEditTime: 2021-09-15 22:49:57
 */
#include <iostream>
#include <limits.h>
#include <string>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <utility>
using namespace std;

int main()
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
    return 0;
}