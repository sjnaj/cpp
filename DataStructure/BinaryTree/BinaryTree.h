/*
 * @Author: fengsc
 * @Date: 2021-08-20 22:59:05
 * @LastEditTime: 2022-01-03 18:12:56
 */
#pragma once
//各种二叉树所需头文件
#include <iostream>
#include <string>
#include <stack>
#include <queue>
#include <cmath>
#include <climits>
#include <iomanip>
#include <list>
#include <cstdlib>
#include <cfloat>
#include "/home/fengsc/Desktop/cpp/DataStructure/Stack/EvaluateExpression.cpp"
typedef char DataType;
using namespace std;
class TreeNode
{
public:
    DataType data;
    double weight;
    TreeNode *lchild, *rchild;
    TreeNode(DataType val = 0, TreeNode *lptr = nullptr, TreeNode *rptr = nullptr) : data(val), lchild(lptr), rchild(rptr) {}
};
typedef TreeNode *BinTree;
void Create(BinTree &T, string s, int &i);   //用广义表初始化，+(*(4,*(3,2)),+(*(3,2),1))，(a(b,c(d,)))
BinTree CreateUnrecur(string s);             //广义表初始化非递归
BinTree CreateByPreQrder(string &s);         //用先序表达式初始化,空结点用#表示
string CreatePreOrderList(BinTree &T);       //创建先序遍历序列
void CreateExpression(BinTree &T, string S); //用算数表达式初始化,仅限四则,(1+2*3)+2*3*4
BinTree CreateByInAndLevel(string in, string level, int ie, int is = 0, int ls = 0);
int ComputeExpression(BinTree &T);
int DoOperator(char op, int x, int y);
//常用模板函数
template <typename Tree>
void PreOrder(Tree &T);
template <typename Tree>
void InOrder(Tree &T);
template <typename Tree>
void Postorder(Tree &T);
template <typename Tree>
void PrintTree(Tree &T);            //类树型按行打印
template <typename Tree>
void LevelOrder(Tree &T);
template <typename Tree>
int Height(Tree &T);
template<typename Tree>
void Print(Tree &T);              //广义表形式
template<typename Tree>
void Visit(Tree &t);
template<typename Tree>
void FreeTree(Tree &T);
void PreOrderUnrecur(BinTree &T);
void PreOrderUnrecur1(BinTree &T); //非通用
void InorderUnrecur(BinTree &T);
void PostorderUnrecur(BinTree &T);
void TraverseGeneral(BinTree &T, int flags); //flags=1,2,3;pre，in,post;
void PrintPreOrderExp(BinTree &T);   //先序序列形式
void PrintRecess(BinTree &T, int k); //凹入表
int NodeHeight(BinTree &T, BinTree &p);
void GoAlongLeftBranch(BinTree &T, stack<BinTree> &S); //沿左分支遍历并将结点入栈
BinTree GetParent(BinTree &T, BinTree &p);
BinTree GetParent(BinTree &T, char c);
int CountNode(BinTree &T, int degree);   //统计度为degree的结点数
template <typename Tree>
int Count(Tree &T);                   //统计结点总数
template<typename Tree>
bool IsBalance(Tree &T, int &height); //判断是否平衡
bool IsComplete(BinTree &T);             //判断完全二叉树
bool IsSameTree(BinTree p, BinTree q);
int MaxEle(BinTree &T);
int MinEle(BinTree &T);
void ExchangeNode(BinTree &T);
