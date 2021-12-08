/*
 * @Author: fengsc
 * @Date: 2021-10-31 14:11:31
 * @LastEditTime: 2021-12-07 22:42:06
 */
#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <stack>
#include <queue>
#include "BinaryTree.cpp"
using DataType = int;
using namespace std;
struct Node
{
    Node *child, *sibling;
    DataType data;
    Node(int val = 0, Node* pchild = nullptr, Node *psibling = nullptr) : data(val), child(pchild), sibling(psibling) {}
};
using CSTree = Node *;
void createCSTree(CSTree &t, DataType elem[], int degree[],int n);
CSTree createByGeneralLists (const string &str);
void printCSTree(CSTree &t, int k); //凹入表输出
CSTree getParent(CSTree &t, CSTree p);
CSTree getParent(CSTree &t, DataType x);
void freeTree(CSTree &t);
BinTree convertToBinTree(CSTree &t);
CSTree convertToCSTree(BinTree &T);//二叉树根的右子树会被忽略
void visit(CSTree &t);
void preOrderRecur(CSTree &t);
void postOrderRecur(CSTree &t);
void inOrderRecur(CSTree &t);
void preOrder(CSTree &t);
void inOrder(CSTree &t);
void levelOrder(CSTree &t);






