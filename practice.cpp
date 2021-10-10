/*
 * @Author: fengsc
 * @Date: 2021-05-19 17:22:12
 * @LastEditTime: 2021-05-21 21:38:48
 */
#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;
class func
{

public:
    void hanoi(int, char, char, char);
    void move(int, char, char);
    func(char A, char B, char C) : m_B(B), m_A(A), m_C(C) {}
    static int m_m;
    char m_A, m_B, m_C;
    int m_n;
    
};
int func::m_m = 1;
/*func::func(char A, char B, char C)
{
m_A=A;
m_B=B;
m_C=C;
}*/
int main()
{

     func *p = new func[2]{func('A','B','C'),func('A','B','C')};
    cin >> p->m_n;
    p->hanoi(p->m_n, p->m_A, p->m_B, p->m_C);
    delete p;
    return 0;
    }
    void func::hanoi(int n, char A, char B, char C) //盘子数量，初始轴，中间轴，目标轴；
    {
        if (n == 1) //!最频繁的操作，是两个递归调用的终止条件
        {
            move(1, A, C); //最上面的一号盘
            return;        //或else
        }
        hanoi(n - 1, A, C, B); //将A上面n-1个移动到B
        move(n, A, C);         //将A上最下面一个最大的移动到C，也是移动每个子递归上最大的；
        hanoi(n - 1, B, A, C); //将中间轴B上的移动到C
    }
    void func::move(int n, char A, char C)
    {
        cout << m_m++ << ':' << n << "from" << A << " to" << C << endl;
    }