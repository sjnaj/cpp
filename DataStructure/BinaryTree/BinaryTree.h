/*
 * @Author: fengsc
 * @Date: 2021-08-20 22:59:05
 * @LastEditTime: 2021-10-05 23:23:13
 */
#pragma once  
//在一个文件里只包含一次
#include <iostream>
#include <string>
#include <stack>
#include <queue>
#include <math.h>
#include <limits.h>
#include <iomanip>
#include <list>
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
    TreeNode(DataType val, TreeNode *lptr, TreeNode *rptr) : data(val), lchild(lptr), rchild(rptr) {}
};
typedef TreeNode *BinTree;
void Create(BinTree &T, string s, int &i);           //用广义表初始化，+(*(4,*(3,2)),+(*(3,2),1))，(a(b,c(d,)))
void CreateUnrecur(BinTree &T,string s);//广义表初始化非递归
void CreateByPreQrder(BinTree &T, string S, int &i); //用先序表达式初始化,+*4##*3##2##+*3##2##1##
void CreateExpression(BinTree &T, string S);         //用算数表达式初始化,仅限四则,(1+2*3)+2*3*4
int ComputeExpression(BinTree &T);
int DoOperator(char op,int x,int y);
void PreOrder(BinTree &T);
void Inorder(BinTree &T);
void Postorder(BinTree &T);
void PreOrderUnrecur(BinTree &T);
void PreOrderUnrecur1(BinTree &T); //非通用
void InorderUnrecur(BinTree &T);
void PostorderUnrecur(BinTree &T);
void LevelOrder(BinTree &T);
void TraverseGeneral(BinTree &T, int flags);//flags=1,2,3;pre，in,post;
void Print(BinTree &T);            //广义表形式
void PrintPreOrderExp(BinTree &T); //先序序列形式
void PrintLevel(BinTree &T);//类树形打印，仅适用于完全二叉树
void FreeTree(BinTree &T);
int Height(BinTree &T);
int NodeHeight(BinTree &T,BinTree &p);//结点深度
void GoAlongLeftBranch(BinTree &T, stack<BinTree> &S);//沿左分支遍历并将结点入栈
void Visit(BinTree &t);
BinTree GetParent(BinTree &T, BinTree &p);
BinTree GetParent(BinTree &T, char c);
int CountNode(BinTree &T,int degree);//统计度为degree的结点数
int Count(BinTree &T);//统计结点总数
bool IsBalance(BinTree &T,int &height);//判断是否平衡,注意要引用高度
bool IsComplete(BinTree &T);//判断完全二叉树
bool IsSameTree(BinTree p, BinTree q);
int MaxEle(BinTree &T);
int MinEle(BinTree &T);
void ExchangeNode(BinTree &T);
