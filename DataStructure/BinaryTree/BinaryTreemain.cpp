/*
 * @Author: fengsc
 * @Date: 2021-08-21 17:41:47
 * @LastEditTime: 2021-08-23 20:07:17
 */
#include "BinaryTree.cpp"
int main()
{
    BinTree T;
    int i = 0;
    string s = "1(2,3(4,5))"; //t = "ABC##D#E###";
                              //CreateByPreQrder(T, t, i);
                              //CreateExpression(T, s);
    CreateUnrecur(T, s);
    PreOrder(T);
    cout << endl;
    InOrder(T);
    cout << endl;
    PostOrder(T);
    cout << endl;
    Print(T);
    cout << endl;
    PrintPreOrderExp(T);
    cout << endl;
    cout << Height(T);
    cout << endl;
    PreOrderUnrecur1(T);
    cout << endl;
    InorderUnrecur(T);
    cout << endl;
    PostOrderUnrecur(T);
    cout << endl;
    LevelOrder(T);
    // cout<<GetParent(T,T->lchild->lchild)->data<<endl;
    FreeTree(T);
    return 0;
}