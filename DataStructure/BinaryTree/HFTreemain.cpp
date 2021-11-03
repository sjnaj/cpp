/*
 * @Author: fengsc
 * @Date: 2021-11-02 21:27:43
 * @LastEditTime: 2021-11-03 16:01:03
 */
#include "HFTree.cpp"
using namespace std;
const int LEAF_NUM = 5;
int main()
{
    double weight[LEAF_NUM] = {0.05, 0.2, 0.35, 0.3, 0.1};
    DataType val[LEAF_NUM * 2 - 1] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};
    HFTree HF = createHFTree(val, weight, LEAF_NUM);
    for (int i = 0; i < HF.totalNum; i++)
        cout << HF.elem[i].weight << ' ';
    cout << endl;
    BinTree T = convert(HF, HF.root);
    PrintHFTree(HF,5);
}