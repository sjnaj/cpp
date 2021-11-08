/*
 * @Author: fengsc
 * @Date: 2021-11-07 23:25:40
 * @LastEditTime: 2021-11-08 16:39:32
 */
#include <iostream>
#include <cstring>
#include <ctime>
#include <random>
#include "/home/fengsc/Desktop/cpp/CppTest/class/src/timeCount.h"
using namespace std;
#define select                                          \
    (                                                   \
        {                                               \
            static default_random_engine e(time(NULL)); \
            static bernoulli_distribution b;            \
            b(e);                                       \
        })
struct PlayerNode
{
    double passCount; //总的通关次数
    int outLocation;  //每场的淘汰位置
    PlayerNode() : passCount(0), outLocation(0) {}
};
struct BridgeNode
{
    bool broken; //桥结点的状态，普通玻璃破碎为true,否则为false;
    BridgeNode() : broken(false) {}
};
struct Group
{
    PlayerNode *players; //玩家数组
    BridgeNode *bridges; //桥结点数组
    int *survialNumber;  //各场存活玩家总数数组
    int playerNumber;    //玩家总数
    int bridgeNumber;    //桥结点总数
    int totalNumber;     //试验次数总数
    double survialTotal; //所有场次存活玩家总数
    Timer timer;         //计时成员
    Group(int _playerNumber, int _bridgeNumber, int _totalNumber) : playerNumber(_playerNumber), bridgeNumber(_bridgeNumber), survialTotal(0),
                                                                    totalNumber(_totalNumber), players(new PlayerNode[_playerNumber + 1]),
                                                                    survialNumber(new int[_totalNumber + 1]), bridges(new BridgeNode[_bridgeNumber + 1])
    {
        for (int i = 1; i <= _totalNumber; i++)
            survialNumber[i] = _playerNumber;
    }
    ~Group()
    {
        delete[] players;
        delete[] bridges;
        delete[] survialNumber;
    }
    void reset() //重置准备下一轮
    {
        for (int i = 1; i <= bridgeNumber; i++)
            bridges[i].broken = false;
        for (int j = 1; j <= playerNumber; j++)
            players[j].outLocation = 0;
    }
};
int main()
{
    Group G(16, 18, 100000); //G.playerNumber-G.totalNumber/2;平均两块板淘汰一个玩家
    for (int k = 1; k <= G.totalNumber; k++)
    {
        for (int i = 1; i <= G.playerNumber; i++)
        {
            for (int j = G.players[i - 1].outLocation; j <= G.bridgeNumber; j++) //后一位可以追随前一位的轨迹到达前一位淘汰的位置
            {
                if (G.bridges[j].broken == false && select == false) //选了普通玻璃板，淘汰
                {
                    G.bridges[j].broken = true;
                    G.players[i].outLocation = j;
                    //cout << j << ' ';
                    G.survialNumber[k]--;
                    break;
                }
            }
            if (G.players[i].outLocation == 0) //i号玩家顺利通关
            {
                G.players[i].outLocation = G.bridgeNumber + 1; //更新未淘汰玩家的淘汰位置为不可达值
                G.players[i].passCount++;
            }
        }
        // cout << endl;
        G.survialTotal += G.survialNumber[k];
        G.reset();
    }
    for (int i = 1; i < G.playerNumber; i++)
        cout << "survialRate of player " << i << " is " << G.players[i].passCount / G.totalNumber << endl;
    cout << G.survialTotal / G.totalNumber << endl;
}