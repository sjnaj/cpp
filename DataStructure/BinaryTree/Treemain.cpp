/*
 * @Author: fengsc
 * @Date: 2021-10-31 15:03:26
 * @LastEditTime: 2021-11-01 19:11:46
 */
#include "Tree.cpp"
int main()
{
    DataType elem[] = {'R', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'};
    int degree[] = {3, 2, 0, 1, 0, 0, 3, 0, 0, 0};
    CSTree t;
    createCSTree(t, elem, degree, sizeof(elem));
    printCSTree(t, 0);
    cout << getParent(t, 'F')->data << endl;
    BinTree bt=convertToBinTree(t);
    PrintRecess(bt,0);
    CSTree cp=convertToCSTree(bt);
    printCSTree(cp,0);
    preOrder(t);
    cout<< endl;
    inOrder(t);
        cout<< endl;
    preOrderRecur(t);
        cout<< endl;
    PreOrder(bt);
    cout<< endl;
    inOrderRecur(t);
        cout<< endl;
    InOrder(bt);
    cout<< endl;
    PostOrder(bt);
    levelOrder(t);
    CSTree tree= createByGeneralLists("1(2,2,2,3(4,5,6))");
    levelOrder(tree);
    freeTree(cp);
    freeTree(t);
    FreeTree(bt);
    freeTree(tree);
}
