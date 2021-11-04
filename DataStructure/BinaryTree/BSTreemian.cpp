/*
 * @Author: fengsc
 * @Date: 2021-11-04 21:31:16
 * @LastEditTime: 2021-11-04 23:41:41
 */
#include "BSTree.cpp"
int main()
{
    string s = "135792468";
    BSTree T = createCSTree(s);
    printInorder(T);
    cout << endl;
    deleteBSNode(T, '5');
    printInorder(T);
    cout << endl;
}