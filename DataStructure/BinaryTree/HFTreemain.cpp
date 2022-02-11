/*
 * @Author: fengsc
 * @Date: 2021-11-02 21:27:43
 * @LastEditTime: 2021-11-06 20:07:38
 */
#include "HFTree.cpp"
using namespace std;
const int LEAF_NUM = 10;
int main()
{
    double weight[LEAF_NUM] = {0.05, 0.1, 0.1, 0.05, 0.3, 0.1, 0.1, 0.1, 0.05, 0.05};
    DataType val[LEAF_NUM * 2 - 1] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'};
    for (int i = LEAF_NUM; i < LEAF_NUM * 2 - 1; i++)
        val[i] = '0';
    HFTree HF = createHFTree(val, weight, LEAF_NUM);
    cout << endl;
    BinTree T = convert(HF, HF.root);
    printHFTree(HF, 4);
    encode(HF);
    printCode(HF);
    cout << decode(HF, "001") << endl;
    FreeTree(T);
}