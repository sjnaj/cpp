/*
 * @Author: fengsc
 * @Date: 2021-11-13 19:52:00
 * @LastEditTime: 2022-03-15 20:30:04
 */
#include <iostream>
#include <fstream>

#include <vector>
#include <cmath>
using namespace std;
void getPower(vector<string> &loc, string res, vector<int> set, size_t index)
{
    if (index == set.size())
    {
        if (res.back() == ',')
            res.pop_back();
        res += "]";
        loc.emplace_back(res);
        return;
    }
    //*特殊的先序遍历(直观看是中序)，触底进入结果序列
    getPower(loc, res, set, index + 1); //不选 访问左子树，遇到新结点即加入res
    res += to_string(set[index]) + ','; //选 跳到右子树
    getPower(loc, res, set, index + 1); //继续选，不会和访问左子树时的元素重复因为那边包含此元素的序列已经触底进入res(深度优先)
}
int combine(vector<int> &vec, int n, int index)
{
    int count = 0;
    static vector<int> result(index, 0); //只会初始化一次
    for (int i = n - 1; i >= index - 1; --i)//在n-1到index-1的区间里
    {
        if (index > 0)
        {
            result[index - 1] = vec[i];              // 将最大的数放入结果中
            count += combine(vec, n - 1, index - 1); // 接着对剩下的元素进行组合
        }
        else
        {
            for (const auto &i : result)
                cout << i << ' ';
            cout << endl;
            return ++count;
        }
    }
    return count;
}

vector<string> cartesianProduct(vector<string> setx, vector<string> sety) //求两个集合的笛卡尔积，元素类型为string
{
    vector<string> ans(setx.size() * sety.size());
    size_t t = 0;
    for (auto x : setx)
        for (auto y : sety)
            ans[t++] += (x + y);
    return ans;
}
vector<string> cartesianProduct(vector<string> set, int n) //就一个集合的笛卡尔幂
{
    vector<string> ans = set;
    ans.reserve(pow(set.size(), n));
    n--;
    while (n--) //作n-1次笛卡尔积
        ans = cartesianProduct(ans, set);
    return ans;
}
int main()
{
    vector<int> set = {1, 2, 3};
    vector<string> loc;
    loc.reserve(pow(2, set.size()));
    string res{"["};
    getPower(loc, res, set, 0);
    for (auto i : loc)
        cout << i << endl;
    cout << endl;
    vector<string> Set = {"0", "1"}, ans(pow(2, set.size()));
    ans = cartesianProduct(Set, set.size());
    for (auto i : ans)
        cout << i << endl;
    cout << endl;
    for (auto i : ans)
    {
        for (size_t j = 0; j < set.size(); j++)
            if (i[j] - '0')
                cout << set[j];
        cout << endl;
    }
    res = '[';
    // ofstream file("nums.txt", ios::out);

    // set = { -7,-6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6,7};
    // cout << combine(set, set.size(), 5) << endl;
    

    // file.close();
}