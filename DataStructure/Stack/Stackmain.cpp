/*
 * @Author: fengsc
 * @Date: 2021-08-12 14:09:07
 * @LastEditTime: 2021-08-16 23:49:31
 */
#include "Stack.cpp"
#define MAXN 10
int main()
{

    vector<int> value{1, 2, 5, 6, 3,4,3,4,5,3,2};
   SeqStack S(value);
   SortUsingStack(S);
   PrintStack(S);
   /*string s;
   cin >>s;
   cout<<JudgeParenthesisMatching(s);*/
   /*int init,k;
   cin >> s>>init>>k;
   SysConvert(s,init,k);*/
    /*list<int> values1{4, 3, 2, 1};//左边是栈底
    list<int> values2{1, 2, 3, 4};
    stack<int, list<int>> A(values1);
    stack<int, list<int>> B(values2);
    int a,b,c;
    cout<<JudgeStackShuffle(A, B);*/
    
    return 0;
}