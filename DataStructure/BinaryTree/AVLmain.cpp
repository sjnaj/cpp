/*
 * @Author: fengsc
 * @Date: 2021-11-06 19:39:43
 * @LastEditTime: 2021-11-07 02:56:43
 */
#include "AVLTree.cpp"
int main()
{
    string s = "abcdefghijklmnopqrstuvwxyz";
    AVLTree T = create<AVLTree>(s);
    PrintTree(T);
    cout << T->height << endl;
    InOrder(T);
    cout << endl;
    remove(T, 'b');
    InOrder(T);
    PrintTree(T);
    cout << endl;
    string s2 = "abcdefghij";
    BSTree BT = create<BSTree>(s2);
    cout << Height(BT) << endl;
    PrintTree(BT);
    InOrder(BT);
    cout << endl;
    cout << Height(BT) << endl;
    FreeTree(T);
    FreeTree(BT);
}