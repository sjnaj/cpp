/*
 * @Author: fengsc
 * @Date: 2021-08-20 22:59:05
 * @LastEditTime: 2021-08-22 21:12:36
 */
#include <iostream>
#include <string>
#include <stack>
#include <queue>
#include "/home/fengsc/Desktop/cpp/DataStructure/Stack/EvaluateExpression.cpp"
typedef char DataType;
using namespace std;
class TreeNode
{
public:
    DataType data;
    TreeNode *lchild, *rchild;
    TreeNode() : data(0), lchild(nullptr), rchild(nullptr) {}
    TreeNode(DataType val) : data(val), lchild(nullptr), rchild(nullptr) {}
    TreeNode(DataType val, TreeNode *rptr, TreeNode *lptr) : data(val), lchild(lptr), rchild(rptr) {}
};
typedef TreeNode *BinTree;
void Create(BinTree &T, string s, int &i);           //用广义表初始化，+(*(4,*(3,2)),+(*(3,2),1))，(a(b,c(d,)))
void CreateUnrecur(BinTree &T,string s);//广义表初始化非递归
void CreateByPreQrder(BinTree &T, string S, int &i); //用先序表达式初始化,+*4##*3##2##+*3##2##1##
void CreateExpression(BinTree &T, string S);         //用算数表达式初始化,(1+2*3)+2*3*4
void PreOrder(BinTree &T);
void Inorder(BinTree &T);
void Postorder(BinTree &T);
void PreOrderUnrecur(BinTree &T);
void PreOrderUnrecur1(BinTree &T); //非通用
void InorderUnrecur(BinTree &T);
void PostorderUnrecur(BinTree &T);
void LevelOrder(BinTree &T);
void Print(BinTree &T);            //广义表形式
void PrintPreOrderExp(BinTree &T); //先序序列形式
void FreeTree(BinTree &T);
int Height(BinTree &T);
void GoAlongLeftBranch(BinTree &T, stack<BinTree> &S);//沿左分支遍历并将结点入栈
void Visit(BinTree &t);
BinTree GetParent(BinTree &T, BinTree &p);
