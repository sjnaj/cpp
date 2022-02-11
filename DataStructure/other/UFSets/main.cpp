/*
 * @Author: fengsc
 * @Date: 2021-11-12 14:29:23
 * @LastEditTime: 2021-12-10 12:47:37
 */
#include <iostream>
#include <sstream>
#include <vector>
using namespace std;
#define SIZE 100
struct UFSets
{
private:
    vector<int> fa;
public:
    size_t size() { return fa.size(); }
    UFSets(size_t size = SIZE)
    {
        fa.assign(size, -1); //初始各成一派，都是集合(根)，fa[root]的相反数为其集合中元素个数
    }
    size_t find(size_t x) //查找根(等价类代表元),同时实现路径压缩,将沿途结点指向根结点，减少重复查找所需时间
    {
        return fa[x] < 0 ? x : (fa[x] = find(fa[x]));
    }
    void merge(size_t x, size_t y) //合并在元素较多集合上，防止树发生退化(高度过高)
    {
        if (x != y)
        {
            int setx = find(x), sety = find(y); //找到所属集合
            int sum = fa[setx] + fa[sety];
            //根结点fa为负值，越小元素数越多
            fa[setx] < fa[sety] ? (fa[sety] = setx, fa[setx] = sum) : (fa[setx] = sety, fa[sety] = sum);
        }
    }
    void initByOrderedPair(vector<pair<int, int>> &pairs) //通过有序关系对初始化
    {
        for (int i = 0; i < pairs.size(); i++)
            merge(pairs[i].first, pairs[i].second);
    }
    vector<string> divide() //划分获得等价类
    {
        vector<string> result;
        string set;
        for (size_t i = 0; i < fa.size(); i++)
        {
            if (fa[i] < 0)
            {
                for (int j = 0; j < fa.size(); j++)
                {
                    if (find(j) == i) //将满足等价关系的元素放进字符串(不是所有路径都压缩过，不能直接用父亲判断)
                        set += to_string(j) + ",";
                }
                set.pop_back(); //吐出最后一个逗号
                result.emplace_back(set);
                set.clear();
            }
        }
        return result;
    }
    /*
    size_t find(size_t x)
    {
        while (fa[x] >= 0)
            x = fa[x];
        return x;
    }
    void merge(size_t x, size_t y) //合并在x根上
    {
        if (x != y)
            fa[x] += fa[y];
        fa[y] = x; //y指向x
    }*/
};
int main()
{
    int size = 10;
    string pairstr = "(1,2)(3,4)(7,9)(4,6)(6,1)(0,5)";
    stringstream ss(pairstr);
    vector<pair<int, int>> pairs;
    pair<int, int> p;
    char c; //占位
    while (ss >> c >> p.first >> c >> p.second >> c)
        pairs.emplace_back(p);
    UFSets S(size);
    S.initByOrderedPair(pairs);
    vector<string> sets = S.divide();
    for (int i = 0; i < sets.size(); i++)
        cout << sets[i] << endl;
}
