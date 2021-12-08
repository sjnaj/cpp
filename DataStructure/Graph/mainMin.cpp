/*
 * @Author: fengsc
 * @Date: 2021-12-07 17:06:33
 * @LastEditTime: 2021-12-08 01:34:55
 */
#include "src/GraphAdjacencyList.h"
using namespace std;
int main()
{
    vector<int> vertexVec{0, 1, 2, 3, 4, 5, 6, 7};
    vector<int> path;
    vector<vector<int>> paths;
    vector<int> weight{500, 1500, 600, 1200, 1200, 1500, 1300, 500, 694, 750, 845, 1500, 1200, 700, 3000};
    ALGraph<int> G(vertexVec, ALGraph<int>::getPair("(0,1)(0,2)(0,3)(0,4)(0,6)(0,7)(1,3)(1,7)(2,3)(2,4)(2,5)(3,5)(4,5)(4,6)(6,7)"), weight, UNDIRECTED);
    cout << endl;
    ALGraph<int> SPTree(G.n, G.direct);
    G.dijkstra(0, SPTree);
    paths = SPTree.getPaths();
    for (auto &i : paths)
    {
        for (auto &j : i)
            cout << j << ' ';
        cout << endl;
    }
    paths.clear();
    paths=G.getPaths();
    for (auto &i : paths)
    {
        for (auto &j : i)
            cout << j << ' ';
        cout << endl;
    }

}