/*
 * @Author: fengsc
 * @Date: 2021-11-13 19:52:00
 * @LastEditTime: 2021-11-13 21:36:36
 */
    #include <iostream>
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
        getPower(loc, res, set, index + 1); //不选
        res += to_string(set[index]) + ','; //选
        getPower(loc, res, set, index + 1);
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
    }