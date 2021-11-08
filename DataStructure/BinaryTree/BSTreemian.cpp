/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:16
 * @LastEditTime: 2021-11-06 21:46:22
 */
#include "BSTree.cpp"
int main()
{
    string s = "123456789";
    BSTree T = create<BSTree>(s);
   InOrder(T);
    cout << endl;
    deleteBSNode(T, '5');
    PrintTree(T);
    InOrder(T);
    cout << endl;
    cout<<Height(T);
    FreeTree(T);
}