/*
 * @Author: fengsc
 * @Date: 2021-11-18 11:39:20
 * @LastEditTime: 2021-12-08 19:54:30
 */
#include "src/GraphMatrix.h"
using namespace std;
int main()
{
    vector<char> vertexVec = {'a', 'b', 'c', 'd', 'e', 'f'};
    GraphMatrix M(vertexVec, GraphMatrix<char, char>::getPair("(a,d)(a,b)(b,c)(a,c)(c,d)(d,e)(a,e)"), vector<int>{1, 2, 3, 4, 5, 6, 7}, UNDIRECTED);
    M.insert(0, 0, 10);
    cout << M.adjacentMatrixWithWeight() << endl;
    M.insert(M.loc('d'), M.loc('c'));
    cout << M.adjacentMatrix() << endl;
    M.remove('a');
    cout << M.adjacentMatrix() << endl;
    Matrix<bool> m = M.adjacentMatrix();
    cout << m.power(10) << endl;
    cout << m[0][2] << endl;
    cout << M.reachabilityMatrix() << endl;
    /*
    GraphMatrix M2(vertexVec, GraphMatrix<char, char>::getPair("(1,4)(2,1)(2,3)(3,1)(3,4)(4,3)"));
    cout << M2.Warshall() << endl;
    cout << M2.reachabilityMatrix() << endl;
    cout << M2.minDistance('4', '1') << endl;
    cout << M2.LengthOfLoop('1') << endl;
    cout << M2.numOfPath('1', '3', 4) << endl;
    vector<char> vertexVec2{'a', 'b', 'c', 'd'};
    GraphMatrix M3(vertexVec2, GraphMatrix<char, char>::getPair("(a,b)(b,d)(d,c)(c,a)"), UNDIRECTED);
    cout << M3.adjacentMatrix() << endl;
    cout << M3.numOfPath('a', 'd', 4) << endl;
    cout << M3.adjacentMatrix().getInt().power(4) << endl;
    cout << M3.reachabilityMatrix();
    vector<char> path;
    path.reserve(M.n);
    M.bfs(M.loc('e'), path);
    cout << string(path.begin(), path.end()) << endl;
    vector<int> vectexVec2 = {1, 2, 3, 4, 5, 6, 7, 8};
    GraphMatrix<int> M2(vectexVec2, GraphMatrix<int, char>::getPair("(1,2)(3,2)(2,7)(3,8)(4,5)(3,5)(3,4)(8,2)"), UNDIRECTED);
    vector<int> path2;
    path2.reserve(M2.n);
    M2.bfs(M2.loc(3), path2);
    for (int &i : path2)
        cout << i;
    cout << endl;
    path2.clear();
    M2.reset();
    M2.dfs(M2.loc(3), path2);
    for (int &i : path2)
        cout << i;
    cout << endl;
    int clock = 0;
    M2.reset();
    path2.clear();
    M2.DFS(M2.loc(3), clock, path2);
    for (int i = 0; i < M2.n; i++)
        cout << M2.vertex(i) << ' ' << M2.dTime(i) << ' ' << M2.fTime(i) << endl;
    cout << M2.isDirectRelative(M2.loc(4), M2.loc(8)) << endl;*/
    vector<char> vertexVec3 = {'A', 'B', 'C', 'D', 'E', 'F'};
    GraphMatrix<char> M3(vertexVec3, GraphMatrix<char, char>::getPair("(A,C)(B,C)(A,D)(C,D)(C,F)(C,E)(E,F)"));
    vector<char> order;
    order.reserve(M3.n);
    M3.dfs(M3.loc('A'), order);
    cout << string(order.begin(), order.end()) << endl;
    M3.TopologicalSort(order);
    cout << string(order.begin(), order.end()) << endl;
    cout << M3.adjacentMatrix() << endl;
    M3.remove(M3.loc('A'));
    cout << M3.adjacentMatrix() << endl;
    M3.insert('G');
    cout << M3.adjacentMatrix() << endl;
}
