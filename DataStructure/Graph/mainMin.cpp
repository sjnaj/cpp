/*
 * @Author: fengsc
 * @Date: 2021-12-07 17:06:33
 * @LastEditTime: 2021-12-10 13:37:25
 */
#include "src/GraphAdjacencyList.h"
#include <random>
using namespace std;
int main()
{
    vector<int> vertexVec{0, 1, 2, 3, 4, 5, 6, 7};
    vector<int> path;
    vector<vector<int>> paths;
    vector<string> names{"北京", "沈阳", "武汉", "上海", "重庆", "广州", "西安", "哈尔滨"};
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
    cout << endl;
    paths.clear();
    paths = G.getPaths();
    for (auto &i : paths)
    {
        for (auto &j : i)
            cout << j << ' ';
        cout << endl;
    }
    ALGraph<int> SPTree2(G.n, G.direct);
    G.prim(0, SPTree2);
    paths.clear();
    paths = G.getPaths();
    for (auto &i : paths)
    {
        for (auto &j : i)
            cout << j << ' ';
        cout << endl;
    }
    paths.clear();
    paths = SPTree2.getPaths();
    for (auto &i : paths)
    {
        for (auto &j : i)
            cout << j << ' ';
        cout << endl;
    }
    cout << SPTree.adjacentMatrix() << endl;
    cout << SPTree2.adjacentMatrix() << endl;
    int a, b;
    double w, _w;
    cin >> a >> b;
    cout << "CREATE 250" << endl;
    for (int i = 0; i < 250; i++)
        cout << "VERTEX " << i <<" V"<<i<<endl;
    while (cin >> a >> b >> w)
            cout << "EDGE " << a << ' ' << b << ' ' << (int)(w * 100000) << endl;
    /* default_random_engine e;
    int i, k;
    uniform_int_distribution<unsigned> u(0, 249);
    for (int j = 0; j < 50; j++)
    {
        i = u(e);
        k = u(e);
        if (i != k)
            cout << "SHORTEST-PATH " << i << ' ' << k << endl;
    }*/
}