/*
 * @Author: fengsc
 * @Date: 2021-07-21 21:11:45
 * @LastEditTime: 2021-10-05 23:20:10
 */
//使用时链接LinkedList.cpp即可，这样可以不用修改编译命令
#pragma once
#include <iostream>
#include <stdlib.h>
#include <iomanip>
#include <algorithm>
#include <math.h>
using namespace std;
typedef int DataType;
/*singlylinkedlist && circular list*/

/*Head可能是头结点指针也可能是首元结点指针，不说明默认为头结点指针*/

typedef struct Node
{
    DataType data;
    struct Node *next;
    Node(int val) : data(val), next(nullptr) {}
    Node(Node *ptr) : next(ptr) {}
    Node() : data(0), next(nullptr) {}
    Node(int val, Node *ptr) : data(val), next(ptr) {}
} LinkNode, *LinkList;
void InitList(LinkList &Head);
void FreeList(LinkList &Head);          //有无头结点均可
void InitVal(LinkList &Head, int sum);  //尾插法
void InitVal2(LinkList &Head, int sum); //头插法，都无需提前调用InitList
LinkList FindByLoc(LinkList &Head, int loc);
LinkList FindByVal(LinkList &Head, DataType x);
bool Insert(LinkList &Head, int loc, DataType x);
bool RemoveByLoc(LinkList &Head, int loc);
bool RemoveByVal(LinkList &Head, DataType x);
bool RemoveByVal2(LinkList &Head, DataType x);
void RemoveByValWithoutReferAndHeader(LinkList Head, DataType x);
void InitValWithoutHeader(LinkList &Head, int num);
bool Insert2(LinkList &Head, int loc, DataType x);
bool RemoveByVal2(LinkList &Head, DataType x);
LinkList Copy(LinkList &Head);

void Print(LinkList &Head, int flag); //zero:without Header
void Reverse(LinkList &Head);
LinkList ReverseRecursively(LinkList &head); //without header
void InitCircListVal(LinkList &Head);        //带头结点
void PrintCircList(LinkList &Head);
void FreeCircList(LinkList &Head);
bool InsertCircList(LinkList &Head, int loc, DataType x);
bool RemoveCircList(LinkList &Head, int loc);
void JosephCircle(LinkList &Head, int begin, int gap, int sum);
LinkList MergeTwoOrderedLists(LinkList &a, LinkList &b);
/*Usage:Head1->next = MergeTwoLists(Head1->next, Head2->next);*/
LinkNode *DetectCycle(LinkNode *head); //返回进入环的结点。

/*Double linked List（circular）*/
typedef struct Dblnode
{
    DataType data;
    struct Dblnode *pred, *next;
} DblNode, *DblList;
void DblLInitVal(DblList &Head, int sum);
void DblLPrint(DblList &Head, int flag);
DblList DblLSearchByVal(DblList &Head, DataType x, int flag);
DblList DblLSearchByLoc(DblList &Head, int loc, int flag);
bool DblLInsert(DblList &Head, int loc, DataType x, int flag);
bool DblLDeleteByLoc(DblList &Head, int loc, int flag);

/*大数运算*/
LinkList AddTwoNembers(LinkList L1,LinkList L2);
LinkList MultiplyTwoNumbers(LinkList L1, LinkList L2);
LinkList FactorialLargeNumbers(int num);

/*Static Linked List */

typedef struct
{
    DataType data;
    int link;
} SNode;
typedef struct
{
    SNode *Elem;
    int size;
    int Head; //首元结点
} SList;
void SListInit(SList &SL, int size); //动态分配最大空间，元素初值为零
void SListFree(SList &SL)
{
    delete[] SL.Elem;
}
int MallocSNode(SList &SL); //申请空闲结点，静态分配内存 ,Elem[0]为备用结点头
void FreeSNode(SList &SL, int k);
void SLInitVal(SList &SL, int size);
void PrintSList(SList &SL);
void SLInsert(SList &SL, int loc, DataType x);
void SLRemove(SList &SL, int loc);

/*polynomial operations*/
typedef struct TermNode
{
    double coef;
    int exp;
    struct TermNode *next;
    TermNode() : coef(0), exp(0), next(nullptr) {}
    TermNode(TermNode *pnext) : next(pnext) {}
    TermNode(double pcoef, int pexp) : coef(pcoef), exp(pexp), next(nullptr) {}
    TermNode(double pcoef, int pexp, TermNode *pnext) : coef(pcoef), exp(pexp), next(pnext) {}
} Term, *Polynomial;
void Input(Polynomial &PL, double C[], int E[], int num);
void PrintPoly(Polynomial &PL);
Polynomial AddPolynomial(Polynomial &A, Polynomial &B);
Polynomial MultiPolynomial(Polynomial &A, Polynomial &B);
double EvalPolynomial(Polynomial &PL,int x);
void DerivePolynomial(Polynomial &PL);
