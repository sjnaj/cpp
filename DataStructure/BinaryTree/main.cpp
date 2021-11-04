/*
 * @Author: fengsc
 * @Date: 2021-11-04 15:57:40
 * @LastEditTime: 2021-11-04 18:23:56
 */
#include "BinaryTree.cpp"
#include "/home/fengsc/Desktop/cpp/CppTest/class/src/timeCount.h"
void PrintTree(BinTree &T)
{
    cout<<"pre:";
    PreOrder(T);
    cout << endl;
    cout<<"in:";
    InOrder(T);
    cout << endl;
    cout<<"post:";
    PostOrder(T);
    cout << endl;
    cout<<"level:";
    LevelOrder(T);
    cout<<"view:";
    PrintLevel(T);
};
int main()
{
    Timer time;
    string in = "DBEJGACHKFI", level = "ABCDEFGHIJK";
    BinTree T = CreateByInAndLevel(in, level, level.length()-1);
    PrintTree(T);
    cout << "Height is:" << Height(T) << endl;
    cout << "Root val is ";
    if (!IsRootValSmallest(T, nullptr))
        cout << "not ";
    cout << "smallest" << endl;
    BinTree T1 = Copy(T);
    ExchangeNode(T1);
    PrintTree(T1);
    DeleteSubTree(T, 'E');
    PrintTree(T);
    FreeTree(T);
    FreeTree(T1);
}