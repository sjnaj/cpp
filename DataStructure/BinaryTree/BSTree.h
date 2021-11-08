/*
 * @Author: fengsc
 * @Date: 2021-11-04 19:49:24
 * @LastEditTime: 2021-11-07 02:30:13
 */
#pragma once
#include "BinaryTree.cpp"
using BSTDataType = char;
using namespace std;
struct BSNode
{
    BSTDataType data;
    BSNode *lchild, *rchild;
    BSNode(BSTDataType val = 0, BSNode *pl = nullptr, BSNode *pr = nullptr) : data(val), lchild(pl), rchild(pr) {}
};
using BSTree = BSNode *;
template void InOrder(BSTree &root);
template int Height(BSTree &root);
//template void PrintTree(BSTree &root);
template void FreeTree(BSTree &root);
template <typename Tree, typename DateType>              //便于其它搜索树使用
Tree search(const Tree &root, DataType x, Tree &father); //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
template <typename Tree>                              //需要显式指定参数
Tree create(string s);
BSTree searchRecur(const BSTree &root, BSTDataType x, BSTree &father); //传入空指针father
bool insert(BSTree &root, BSTDataType x);
template <typename Tree, typename DataType = char>
Tree deleteNode(Tree &root, DataType x);//返回被删结点的父结点以为AVL树的删除提供信息
