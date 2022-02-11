/*
 * @Author: fengsc
 * @Date: 2021-08-15 08:28:10
 * @LastEditTime: 2021-11-05 12:29:22
 */
#include <iostream>
#include <stack>
#include <stdlib.h>
#include <cstring>
#include <string>
#include <math.h>
using namespace std;
/*输入是0-9的整数，运算符是加减乘除，取余，阶乘，乘方和括号，结果可为小数*/
void InfixToPostfix(string &s);//中缀到后缀
double Caculate(string &s);//计算后缀表达式
double DoOperator(stack<double> &T, char op);//做具体的一元或二元运算
int Icp(char op);//栈外优先级
int Isp(char op);//栈内优先级
double Caculate(string &s)
{
    stack<double> T;
    for (int i = 0; i < s.length(); i++)
    {
        if (s[i] >= '0' && s[i] <= '9')
            T.push(s[i] - '0');
        else
            T.push(DoOperator(T, s[i]));
    }
    return T.top();
}
double DoOperator(stack<double> &T, char op)
{
    double x, y;
    if ('!' == op)
    {
        x = T.top();
        T.pop();
        int result = 1;
        for (int i = 1; i <= x; i++)
            result *= i;
        return result;
    }
    y = T.top();
    T.pop();
    x = T.top();
    T.pop();
    switch (op)
    {
    case '+':
        return x + y;
    case '-':
        return x - y;
    case '/':
        if (fabs(y) < 1e-5)
        {
            cout << "Divide by zero!" << endl;
            exit(1);
        }
        return x / y;
    case '*':
        return x * y;
    case '%':
        if (fabs(y) < 1e-5 || x - (int)x > 1e-5 || y - (int)y > 1e-5)
        {
            cout << "Mod by zero or double!" << endl;
            exit(1);
        }
        return (int)x % (int)y;
    case '^':
        return pow(x, y);
    default://不加会警告
        exit(-1);
    }
}

void InfixToPostfix(string &s)
{
    stack<char> Optr;
    Optr.push('\0');
    char p[s.length() + 1];
    strcpy(p, s.c_str()); //拷贝一份，然后修改原串，否则需要动态分配返回或值返回。
    int i = 0, k = 0, t;
    while (1)
    {
        if (p[i] >= '0' && p[i] <= '9')
            s[k++] = p[i++];
        else
        {
            t = Icp(s[i]) - Isp(Optr.top());
            if (t > 0)//操作符继续进栈
                Optr.push(s[i++]);
            else if (t < 0)//退栈将操作符赋给结果串
            {
                s[k++] = Optr.top();
                Optr.pop();
            }
            else
            {
                if ('(' == Optr.top())//括号配对
                {
                    i++;
                    Optr.pop();
                }
                else //结尾'\0'
                {
                    s.erase(k, s.length() - k); //除去剩余部分（括号消去长度变短，会剩余原串中没有访问的部分）
                    break;
                }
            }
        }
    }
}
int Icp(char op)
{

    switch (op)
    {
    case '\0':
        return 0;
    case '+':
    case '-':
        return 2;
    case '*':
    case '%':
    case '/':
        return 4;
    case '^':
        return 6;
    case '!':
        return 8;
    case '(':
        return 10;
    case ')':
        return 1;
    default:
        exit(-1);
    }
}
int Isp(char op)
{
    switch (op)
    {
    case '\0':
        return 0;
    case '+':
    case '-':
        return 3;
    case '*':
    case '%':
    case '/':
        return 5;
    case '^':
        return 7;
    case '!':
        return 9;
    case '(':
        return 1;
    case ')':
        return 10;
    default:
        exit(-1);
    }
}
