/*
 * @Author: fengsc
 * @Date: 2021-10-21 10:18:59
 * @LastEditTime: 2021-10-22 09:12:07
 */
#include <iostream>
#include <vector>
#define n 3//阶数
#define N 3//集合数
using namespace std;
template <typename F>//定义模板减少重复代码
bool operation1(F f)//二重循环模板
{
    for (int j = 0; j < n; j++)
        for (int k = 0; k < n; k++)
            if (!f(j, k))
                return false;
    return true;
};
template <typename F>//三重循环模板
bool operation2(F f)
{
    for (int j = 0; j < n; j++)
        for (int k = 0; k < n; k++)
            for (int l = 0; l < n; l++)
                if (!f(j, k, l))
                    return false;
    return true;
};
int main()
{
    bool commutative, associative, eliminable, idempotent;//结合，交换，消去，幂等。
    char e, ze;//单位元，零元
    vector<string> Operator{"* ", "⊙ ", ". "};//运算符
    char A[][n][n] = {'a', 'b', 'c', 'b', 'c', 'a', 'c', 'a', 'b',
                     'a', 'b', 'c', 'b', 'b', 'b', 'c', 'b', 'c', 
                     'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c'};
    for (int i = 0; i < N; i++)
    {
        e = ze = 0;
        commutative = associative = eliminable = idempotent = true;
        cout << "The operation " << Operator[i] << ":" << endl;
        commutative = operation1([=](int j, int k)
                                 {
                                     if (A[i][j][k] != A[i][k][j])
                                         return false;
                                     return true;
                                 });
        if (!commutative)
            cout << "Doesn't";
        cout << " satisfies the commutative law" << endl;
        associative = operation2([=](int j, int k, int l)
                                 {
                                     if (A[i][A[i][j][k]-'a'][l] != A[i][j][A[i][k][l]-'a'])
                                         return false;
                                     return true;
                                 });
        if (!associative)
            cout << "Doesn't";
        cout << " satisfies the associative law" << endl;
        eliminable = operation2([=](int j, int k, int l)
                                {
                                    if (!commutative || (k != l && A[i][j][k] == A[i][l][j]))
                                        return false;
                                    return true;
                                });
        if (!eliminable)
            cout << "Doesn't";
        cout << " satisfies the cancellation law" << endl;
        idempotent = operation1([=](int j, int k)
                                {
                                    if (j == k && A[i][j][k] != j + 'a')
                                        return false;
                                    return true;
                                });
        if (!idempotent)
            cout << "Doesn't";
        cout << " satisfies the idempotent law" << endl;
        vector<int> cnt(n);
        operation1([&](int j, int k)
                   {
                       if (A[i][j][k] == k + 'a' && A[i][k][j] == k + 'a')
                           cnt[j]++;
                       return true;
                   });
        for (int i = 0; i < n; i++)
            if (cnt[i] == n)
            {
                e = i + 'a';
                cout << "identity element is " << e << endl;
                break;
            }
        std::fill(cnt.begin(), cnt.end(), 0);
        operation1([&](int j, int k)
                   {
                       if (A[i][j][k] == j + 'a' && A[i][k][j] == j + 'a')
                           cnt[j]++;
                       return true;
                   });
        for (int i = 0; i < n; i++)
            if (cnt[i] == n)
            {
                ze = i + 'a';
                cout << "zero element is " << ze << endl;
                break;
            }
        if (e)
        {
            std::fill(cnt.begin(), cnt.end(), -1);
            operation2([&](int j, int k, int l)
                       {
                           if (A[i][A[i][j][k]-'a'][A[i][j][l]-'a'] == e)
                               cnt[A[i][j][k] - 'a'] = A[i][j][l] - 'a';
                           return true;
                       });
            for (int i = 0; i < n; i++)
            {
                if (cnt[i] != -1)
                    cout << "the reverse of " << (char)(i + 'a') << " is " << (char)(cnt[i] + 'a') << endl;
            }
        }
        cout<< endl;
    }
}