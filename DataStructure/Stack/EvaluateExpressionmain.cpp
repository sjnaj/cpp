/*
 * @Author: fengsc
 * @Date: 2021-08-22 18:55:28
 * @LastEditTime: 2021-08-22 18:56:01
 */
#include "EvaluateExpression.cpp"
int main()
{
    string s;
    cin >> s;
    InfixToPostfix(s);
    cout << s << endl;
    cout << Caculate(s) << endl;
    return 0;
}