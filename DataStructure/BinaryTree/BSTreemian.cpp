/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:16
 * @LastEditTime: 2021-12-11 19:02:54
 */
#include "BSTree.cpp"
int main()
{
    string s = "123456789";
    BSTree T = create<BSTree>(s);
    deleteBSNode(T, '5');
    PrintKey(T);
    cout << endl;
    cout<<Height(T);
    FreeTree(T);
}