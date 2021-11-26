/*
 * @Author: fengsc
 * @Date: 2021-11-18 11:39:20
 * @LastEditTime: 2021-11-25 22:34:45
 */
#include "src/GraphMatrix.h"
using namespace std;
/*int main()
{
    Timer timer;
    vector<char> vertexVec = {'1', '2', '3', '4'};
    GraphMatrix M(vertexVec, GraphMatrix<char, char>::getPair("(1,4)(2,1)(2,3)(3,1)(3,4)(4,3)"));
    cout << M.adjacentMatrix() << endl;
    M.insert(2, 3);
    cout << M.adjacentMatrix() << endl;
    M.insert('4', '1');
    cout << M.adjacentMatrix() << endl;
    M.remove('2');
    cout << M.adjacentMatrix() << endl;
    M.insert('1');
    Matrix<bool> m = M.adjacentMatrix();
    cout << m.power(10) << endl;
    cout << m[0][2] << endl;
    cout << M.reachabilityMatrix() << endl;
    GraphMatrix M2(vertexVec, GraphMatrix<char, char>::getPair("(1,4)(2,1)(2,3)(3,1)(3,4)(4,3)"));
    cout << M2.Warshall() << endl;
    cout << M2.reachabilityMatrix() << endl;
    cout << M2.minDistance('4', '1') << endl;
    cout << M2.LengthOfLoop('1') << endl;
    cout << M2.sumOfPath('1', '3', 4) << endl;
    vector<char> vertexVec2{'a', 'b', 'c', 'd'};
    GraphMatrix M3(vertexVec2, GraphMatrix<char, char>::getPair("(a,b)(b,d)(d,c)(c,a)"), UNDIRECTED);
    cout << M3.adjacentMatrix() << endl;
    cout << M3.sumOfPath('a', 'd', 4) << endl;
    cout << M3.adjacentMatrix().getInt().power(4) << endl;
    cout << M3.reachabilityMatrix();
}*/
struct bar{
    int a;
    int b;
    int c;
};
int main()
{
    struct bar* p=(struct bar*)malloc(sizeof(struct bar*));
    p->a=0;p->b=0;
    free(p);
}