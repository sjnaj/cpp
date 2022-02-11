/*
 * @Author: fengsc
 * @Date: 2021-11-10 15:54:52
 * @LastEditTime: 2021-12-07 22:17:00
 */
#include <iostream>
#include <cmath>
#include <vector>
#define N 8
void dfs(vector<int> chess, vector<vector<int>> &ans, int k)
{
    bool attack;
    if (k <= N)
    {
        for (int i = 1; i <= N; i++) //轮流试探各列
        {
            chess[k] = i;
            attack = false;
            for (int j = 1; j <= N; j++)
                if (chess[k] == chess[j] || abs[k - j] == abs[chess[k] - chess[j]]) //同列或同对角线
                    attack = true;
            if (attack == false)
            {
                k==N?ans.emplace_back(chess):Queen
            }
        }
    }
}
