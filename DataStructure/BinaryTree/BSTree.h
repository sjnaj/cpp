/*
 * @Author: fengsc
 * @Date: 2021-11-04 19:49:24
 * @LastEditTime: 2021-12-12 00:23:28
 */
#pragma once
#include "BinaryTree.cpp"
using BSDataType = string;
using KeyType = int; //不同搜索树共用
using namespace std;
struct BSNode
{
    KeyType key;
    BSDataType data; //不常用，一般测试时以键值作为数据
    BSNode *lchild, *rchild;
    BSNode(KeyType _key = 0, BSNode *pl = nullptr, BSNode *pr = nullptr) : key(_key), lchild(pl), rchild(pr) {}
    //BSNode(KeyType _key = 0, BSDataType _data = (BSDataType)NULL, BSNode *pl = nullptr, BSNode *pr = nullptr) : key(_key), lchild(pl), rchild(pr), data(_data) {}
    //数据为string时的专用构造函数,与通用类型的带data构造函数只能存在一个(不使用模板的弊端)
    BSNode(KeyType _key = 0, string _data ="", BSNode *pl = nullptr, BSNode *pr = nullptr) : key(_key), lchild(pl), rchild(pr), data(_data) {}
};
using BSTree = BSNode *;
template void InOrder(BSTree &root);
template int Height(BSTree &root);
template void FreeTree(BSTree &root);
template <typename Tree, typename Key = int>        //使用模板的是通用函数，便于其它搜索树使用
Tree search(const Tree &root, Key x, Tree &father); //设置哨兵father记录查找失败时访问最后一个结点或成功时结点的父亲
template <typename Tree, typename Key>              //需要显式指定参数
Tree create(vector<Key> s);                         //通过键值建立，为方便不传入data值,不适用于data为stirng的情况
bool insert(BSTree &root, KeyType x, BSDataType = (BSDataType)NULL);
BSTree searchRecur(const BSTree &root, KeyType x, BSTree &father); //传入空指针father
template <typename Tree, typename Key = int>
Tree deleteNode(Tree &root, Key x); //返回被删结点的父结点(别删的为根则返回新根)
template <typename Tree>
Tree removeAt(Tree &root, Tree &cur,Tree &father); //在cur处删除并返回被删结点的父结点
template <typename Tree>            //键值树形打印
void PrintKey(Tree &T);