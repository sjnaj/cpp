/*
 * @Author: fengsc
 * @Date: 2021-11-07 23:25:40
 * @LastEditTime: 2021-11-09 19:24:58
 */
#include <iostream>
#include <cstring>
#include <ctime>
#include <cmath>
#include <random>
#include "/home/fengsc/Desktop/cpp/CppTest/class/src/timeCount.h"
using namespace std;
//选择函数，选到0成功
#define select(x)                                              \
    (                                                          \
        {                                                      \
            static default_random_engine e(time(NULL));        \
            static uniform_int_distribution<unsigned> u(0, x); \
            u(e);                                              \
        })
struct PlayerNode
{
    double passCount; //总的通关次数
    int outLocation;  //每场的淘汰位置
    PlayerNode() : passCount(0), outLocation(0) {}
};
struct BridgeNode
{
    int condition; //玻璃板状态，等于结点的普通玻璃数，破碎一块玻璃减一
};
struct Group
{
    PlayerNode *players;  //玩家数组
    BridgeNode *bridges;  //桥结点数组
    int *survivalNumber;  //各场存活玩家总数统计数组
    int *eachPassCount;   //各种通关人数统计数组
    int playerNumber;     //玩家总数
    int bridgeNumber;     //桥结点总数
    int glassNumber;      //一个结点上玻璃板总数(有且仅有1块钢化板)
    double totalNumber;   //试验次数总数
    double survivalTotal; //所有场次存活玩家总数
    Timer timer;          //计时成员
    Group(int _playerNumber, int _bridgeNumber, int _glassNumber, int _totalNumber) :
     playerNumber(_playerNumber),bridgeNumber(_bridgeNumber), survivalTotal(0), glassNumber(_glassNumber),
totalNumber(_totalNumber), players(new PlayerNode[_playerNumber + 1]), eachPassCount(new int[_playerNumber + 1]()),
 survivalNumber(new int[_totalNumber + 1]), bridges(new BridgeNode[_bridgeNumber + 1])
    {     
        for (int i = 1; i <= _totalNumber; i++)
            survivalNumber[i] = _playerNumber;
        for (int i = 1; i <= _bridgeNumber; i++) //桥结点初始状态
            bridges[i].condition = _glassNumber - 1;
        players[0].outLocation = 1; //使第一位选手从第一个结点开始
    }
    ~Group()
    {
        delete[] players;
        delete[] bridges;
        delete[] survivalNumber;
        delete[] eachPassCount;
    }
    void reset() //重置准备下一轮
    {
        for (int i = 1; i <= bridgeNumber; i++)
            bridges[i].condition = glassNumber - 1;
        for (int j = 1; j <= playerNumber; j++)
            players[j].outLocation = 0;
    }
};
int main()
{
    Group G(16, 18, 2, 100000000); //G.playerNumber-G.totalNumber/2;平均两块板淘汰一个玩家
    for (int k = 1; k <= G.totalNumber; k++)
    {
        for (int i = 1; i <= G.playerNumber; i++)
        {
            for (int j = G.players[i - 1].outLocation; j <= G.bridgeNumber; j++) 
            {//后一位可以保证到达前一位淘汰的位置的前一个位置,即在前一位淘汰的位置继续判断
                if (G.bridges[j].condition && select(G.bridges[j].condition)) //需要选择，选了普通玻璃板，淘汰
                {
                    G.bridges[j].condition--; //破一块
                    G.players[i].outLocation = j;
                    G.survivalNumber[k]--;
                    //cout<<i<<' ';
                    break;
                }
            }
            if (G.players[i].outLocation == 0) //i号玩家顺利通关
            {
                G.players[i].outLocation = G.bridgeNumber + 1; //更新未淘汰玩家的淘汰位置使后面的玩家顺利通关
                G.players[i].passCount++;
            }
        }
        G.eachPassCount[G.survivalNumber[k]]++;
        G.survivalTotal += G.survivalNumber[k];
        G.reset();
    }
    for (int i = 1; i <= G.playerNumber; i++)
        cout << "survivalRate of player " << i << " is " << G.players[i].passCount / G.totalNumber << endl;
    for (int i = 0; i <= G.playerNumber; i++)
    {
        cout << "Rate of " << i << " survivals is" << G.eachPassCount[i] / G.totalNumber << endl;
    }
    cout << endl;
    cout << "Mockexpectation is " << G.survivalTotal / G.totalNumber << endl;
     //利用公式计算，仅适用于两块玻璃的情况
    if (G.glassNumber == 2) 
    {
        int C[G.bridgeNumber + 1][G.bridgeNumber + 1] = {0};
        C[0][0] = 1;
        for (int i = 1; i <= G.bridgeNumber; i++) //组合数计算模块
        {
            C[i][1] = 0;
            C[i][0] = 1;
            C[0][i] = 0;
            C[1][i] = 1;
        }
        for (int i = 1; i <= G.bridgeNumber; i++)
            for (int j = 1; j <= G.bridgeNumber; j++)
                C[j][i] = C[j - 1][i - 1] + C[j - 1][i];
        double p[G.playerNumber + 1];
        p[0] = 0;
        double Count[G.playerNumber + 1] = {0}; //各个通关人数对应的概率
        double expection = 0;                   //期望
        cout << "ability of different succNumber: ";
        for (int i = 0; i <= G.playerNumber; i++)
        {
            Count[i] = C[G.bridgeNumber][G.playerNumber - i] / pow(2, G.bridgeNumber);
            expection += Count[i] * i;
            cout << Count[i] << ' ';
        }
        cout << endl;
        cout << "exception is " << expection << endl;
        cout << endl;
    }
}