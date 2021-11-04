/*
 * @Author: fengsc
 * @Date: 2021-11-04 19:49:24
 * @LastEditTime: 2021-11-04 23:35:44
 */
#pragma once
#include <iostream>
#include<queue>
using BSTDataType = char;
using namespace std;
struct BSNode
{
    BSTDataType data;
    BSNode *lchild, *rchild;
    BSNode(BSTDataType val = 0, BSNode *pl = nullptr, BSNode *pr = nullptr) : data(val), lchild(pl), rchild(pr) {}
};
using BSTree = BSNode *;
BSTree search(const BSTree &root, BSTDataType x, BSTree &father);      //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
BSTree searchRecur(const BSTree &root, BSTDataType x,BSTree &father); //传入空指针father
bool insert(BSTree &root, BSTDataType x);
bool deleteBSNode(BSTree root, BSTDataType x);
BSTree createCSTree(string s);
void printInorder(const BSTree &root);
