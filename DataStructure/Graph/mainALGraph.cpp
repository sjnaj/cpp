/*
 * @Author: fengsc
 * @Date: 2021-12-01 16:22:50
 * @LastEditTime: 2021-12-07 15:57:17
 */
#include "src/GraphAdjacencyList.h"
using namespace std;
int main()
{
    /*vector<char> vertexVec = {'A', 'B', 'C', 'D', 'E', 'F'};
    ALGraph A(vertexVec, ALGraph<char, char>::getPair("(A,C)(B,C)(A,D)(C,D)(C,F)(C,E)(E,F)"));
    vector<char> order;
    order.reserve(A.n);
    A.dfs(A.loc('A'),order);  
    cout<<string(order.begin(),order.end())<<endl;
    cout<<A.adjacentMatrix();
    A.remove(A.loc('A'));
    cout<<A.adjacentMatrix();
    A.insert('H');
    cout<<A.adjacentMatrix()<<endl;
    A.insert(A.loc('C'),A.loc('B'));
    cout<<A.adjacentMatrix();
    order.clear();
    A.bfs(A.loc('G'),order);
    cout<<string(order.begin(),order.end())<<endl;
  
    vector<int> vectexVec1={1, 2, 3, 4, 5, 6, 7, 8};
    ALGraph<int>A1(vectexVec1,ALGraph<int,char>::getPair("(1,2)(3,2)(2,7)(3,8)(4,5)(3,5)(3,4)(8,2)"),UNDIRECTED);
    vector<int> path2;
    path2.reserve(A1.n);
    A1.bfs(A1.loc(3), path2);
    for (int &i : path2)
        cout << i;
    cout << endl;
    path2.clear();
    A1.reset();
    A1.dfs(A1.loc(3), path2);
    for (int &i : path2)
        cout << i;
    cout << endl;
    int clock = 0;
    A1.reset();
    path2.clear();
    A1.DFS(A1.loc(3), clock, path2);
    for (int i = 0; i < A1.n; i++)
        cout << A1.vertex(i) << ' ' << A1.dTime(i) << ' ' << A1.fTime(i) << endl;
    cout << A1.isDirectRelative(A1.loc(4), A1.loc(8)) << endl;
    ALGraph<int> A3(ALGraph<int>::getRelate("(1,2,3,5)(2,4)(3,6)(4,2,1)(5,2)(6)"));
     clock = 0;
    vector<int> path3;
    path3.reserve(A3.n);
    A3.DFS(A3.loc(2),clock,path3);
     for (int &i : path3)
        cout << i;
    cout << endl;
    ALGraph A4(ALGraph<char>::getRelate("(a,b,c,d)(b,c,d,a)(c,d)(d,b)"));
    vector<char>path4;
    path4.reserve(A4.n);
    clock=0;
    A4.DFS(A4.loc('b'),clock,path4);
    cout<<string(path4.begin(),path4.end())<<endl;
    cout<<A4.adjacentMatrix();*/
    ALGraph ALG(ALGraph<char>::getRelate("(A,B,E)(B,A,F)(C,D,F,H)(D,C,H)(E,A,F,I)(F,B,E,G,J,C)(G,F,K)(H,C,D)(I,E,F)(J,F,K)(K,J,G,F,L)(L,K)"), UNDIRECTED);
    cout << ALG.adjacentMatrix();
    ALG.bcc();
    ALGraph<char> *p = ALG.getRevese<decltype(ALG)>();
    cout << p->adjacentMatrix() << endl;
    delete p;
    ALGraph ALG2(ALGraph<char>::getRelate("(A,B,D)(B,C,F)(C,A,D,E)(D,E)(E)(F,C)(G,F,H)(H,F,J)(I,H)(J,I)"));
    cout << ALG2.adjacentMatrix() << endl;
    ALG2.scc();
    ALG2.scc2<decltype(ALG2)>();
}