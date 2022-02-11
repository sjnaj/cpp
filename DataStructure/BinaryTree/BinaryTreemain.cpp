/*
 * @Author: fengsc
 * @Date: 2021-08-21 17:41:47
 * @LastEditTime: 2021-11-06 19:06:15
 */
#include "BinaryTree.cpp"
int main()
{
  BinTree p=new TreeNode;
    BinTree T; 
    int i = 0;
    int h = 0;
    // string s = "2*(3+4)+1-1"; //t = "ABC##D#E###";
    string s = "0(1(3(,6),4(7,8)),2)";
    Create(T, s, i);

    // CreateByPreQrder(T, t, i);
    // CreateExpression(T, s);
    // cout<<ComputeExpression(T)<<endl;
    //CreateUnrecur(T, s);
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
    PreOrderUnrecur(T);
    cout << endl;
    InorderUnrecur(T);
    cout << endl;
    PostOrderUnrecur(T);
    cout << endl;
    LevelOrder(T);
    cout << endl;
  // cout<< GetParent(T,'2')->data<<endl
   for(int i=1;i<=3;i++) 
   {
       TraverseGeneral(T,i);
       cout<<endl;
   }
    // cout<<GetParent(T,T->lchild->lchild)->data<<endl;
    //  PrintLevel(T);
   Print(T);
    cout << endl;
    /*ExchangeNode(T);
    Print(T);
    cout << endl;*/
 //   cout << CountNode(T, 2) << ' ' << Count(T) << endl;
    cout << IsBalance(T, h) <<' '<<h<<' '<<Height(T)<< endl;
    PrintRecess(T,0);
    BinTree T1=CreateUnrecur("3(5(6,2(7,4)),1(0,8))");
  
    cout<<Find(T1->lchild,'7')<<endl;
    cout<<Find(T1->lchild,'4')<<endl;
    BinTree p1= new TreeNode('4'),q1= new TreeNode('7');
    cout<<lowestCommonAncestor(T1,p1,q1)->data<<endl;
    cout<<CreatePreOrderList(T1)<<endl;
   // cout << NodeHeight(T, T->lchild) << endl;
  //  cout << MaxEle(T) << ' ' << MinEle(T) << endl;
    FreeTree(T);
    return 0;
}