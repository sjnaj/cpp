/*
 * @Author: fengsc
 * @Date: 2021-11-20 22:06:48
 * @LastEditTime: 2021-11-27 09:09:07
 */
#include "src/Matrix.h"
#include <functional>
#include <ctime>
#include <map>
#include <random>
using namespace std;
#define BINSEED                                         \
    (                                                   \
        {                                               \
            static default_random_engine e(time(NULL)); \
            static bernoulli_distribution b;            \
            b(e);                                       \
        })
struct Relation : public Matrix<bool>
{
    int n;                                       //阶数
    Relation(int _n = 0) : Matrix(_n, _n), n(_n) //生成随机n元关系矩阵
    {
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                matrix[i][j] = BINSEED;
    }

    Relation(vector<vector<bool>> m) : n(m.size()), Matrix(m) {}            //用二维vector生成
    Relation(string relate, int _n) : n(_n), Matrix(getPair(relate), _n) {} //用有序对生成

    map<string, function<bool(int, int, Relation &)>> property = {//,性质判断函数表，键值前添加顺序标识,捕获的this可能失真且不能传入*this(段错误，原因未知，与function有关),只能通过参数列表传入对象
                                                                  {"1.symmetry", [](int i, int j, Relation &matrix)
                                                                   {
                                                                       return matrix[i][j] == matrix[j][i];
                                                                   }},
                                                                  {"2.antisymmetry", [](int i, int j, Relation &matrix)
                                                                   {
                                                                       return !(i != j && matrix[i][j] && matrix[j][i]);
                                                                   }},
                                                                  {"3.reflexivity", [](int i, int j, Relation &matrix)
                                                                   {
                                                                       return matrix[i][i];
                                                                   }},
                                                                  {"4.antireflexivity", [](int i, int j, Relation &matrix)
                                                                   {
                                                                       return !matrix[i][i];
                                                                   }},
                                                                  {"5.transitivity", [](int i, int j, Relation &matrix)
                                                                   {
                                                                       for (int k = 0; k < matrix.n; k++)
                                                                           if (matrix[i][k] && matrix[k][j] && !matrix[i][j])
                                                                               return false;
                                                                       return true;
                                                                   }}};
    map<string, function<void(int, int, Relation &)>> closure{//闭包生成函数表
                                                              {"1,symmetricClosure", [&](int i, int j, Relation &res)
                                                               {
                                                                   res[i][j] = res[i][j] || res[j][i];
                                                               }},
                                                              {"2,antisymmetrcClosure", [&](int i, int j, Relation &res)
                                                               {
                                                                   res[i][j] = res[i][j] && !(i != j && res[i][j] && res[j][i]);
                                                               }},
                                                              {"3,reflexiveClosure", [&](int i, int j, Relation &res)
                                                               {
                                                                   res[i][i] = true;
                                                               }},
                                                              {"4,antireflexiveClosure", [&](int i, int j, Relation &res)
                                                               {
                                                                   res[i][i] = false;
                                                               }},
                                                              {"5,transitiveClosure", [&](int i, int j, Relation &res)
                                                               {
                                                                   for (int k = 0; k < n; k++)
                                                                       res[j][k] = res[j][k] || (res[j][i] && res[i][k]);
                                                               }}};
    template <typename F>
    bool judge(F f) //关系判断函数
    {
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                if (f(i, j, *this) == false)
                    return false;
        return true;
    }
    template <typename F>
    Relation create(F f) //闭包生成函数
    {
        Relation res = *this;
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                f(i, j, res);
        return res;
    }
    void judgeAll() //判断所有性质
    {
        cout << "the " << n << " order relational matrix:" << endl
             << *this << endl;
        for (auto i : property)
        {
            cout << "is ";
            if (judge(i.second) == false)
                cout << "not ";
            cout << string(i.first).erase(0, 2) << endl; //除去排序标识
        }
        cout << endl;
    }
    void createAll() //创建所有闭包
    {
        cout << "Closure of " << n << " order random relational matrix:" << endl
             << *this << endl;
        for (auto i : closure)
            cout << string(i.first).erase(0, 2) << ':' << endl
                 << create(i.second) << endl;
        cout << endl;
    }
    static void test() //生成900个从2阶到10阶的随机关系矩阵，双向验证其生成的闭包的正确性及性质判断的正确性
    {
        for (int i = 2; i < 11; i++)
            for (int j = 0; j < 100; j++)
            {
                Relation tmp(i);
                auto iter1 = tmp.closure.begin();
                auto iter2 = tmp.property.begin();
                while (iter1 != tmp.closure.end())
                {
                    if (tmp.create(iter1->second).judge(iter2->second) == false)
                    {
                        cout << "exists bug in program" << endl;
                        exit(1);
                    }
                    iter1++;
                    iter2++;
                }
            }
    }
};

int main()
{
    Relation::test();
    Relation("(0,2)(2.0)(1,4)(4,1)(3,2)(2,3)(1,1)(3,3)(4,4)(2,2)", 5).judgeAll();
    Relation({{0, 0, 0, 0, 0},
              {0, 1, 0, 0, 0},
              {1, 1, 1, 1, 0},
              {1, 1, 0, 1, 0},
              {1, 1, 1, 1, 0}})
        .judgeAll();
    Relation(5).createAll();
}