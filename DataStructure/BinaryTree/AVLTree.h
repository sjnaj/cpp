/*
 * @Author: fengsc
 * @Date: 2021-11-06 19:11:24
 * @LastEditTime: 2021-12-11 20:01:51
 */
#pragma once
#include "BSTree.cpp"
using namespace std;
#define isRoot(x) (!(x)->parent)
#define isLchild(x) (!isRoot(x) && (x)->parent->lchild == x)
#define isRchild(x) (!isRoot(x) && (x)->parent->rchild == x)
#define getHeight(x) ((x) ? (x)->height : 0)
#define updateHeight(x) ((x)->height = max(getHeight((x)->lchild), getHeight((x)->rchild)) + 1)
#define tallerChild(x) (                                                                                                                                                                                                   \
    getHeight((x)->lchild) > getHeight((x)->rchild) ? (x)->lchild : (                                                                                                         /*左高*/                                   \
                                                                     getHeight((x)->lchild) < getHeight((x)->rchild) ? (x)->rchild : (                                        /*右高*/                                   \
                                                                                                                                      isLchild(x) ? (x)->lchild : (x)->rchild /*优先考虑与父结点同向的(LL/RR)*/ \
                                                                                                                                      )))

using AVLDataType = string;
struct AVLNode
{
    KeyType key; //键值类型同BSTree
    AVLDataType data;
    AVLNode *lchild, *rchild, *parent;
    int height; //此信息更为有用，替代需要通过高度计算的平衡因子,初高为1
    AVLNode(KeyType _key=0 , AVLNode *_parent=nullptr , string _data = "",int _height=1, AVLNode *_lchild = nullptr, AVLNode *_rchild = nullptr) : key(_key), parent(_parent),height(_height), lchild(_lchild), rchild(_rchild), data(_data) {}
    AVLNode(KeyType _key = 0, AVLNode *_parent = nullptr, int _height=1,AVLNode *_lchild = nullptr,AVLNode *_rchild = nullptr) : key(_key), parent(_parent),height(_height) ,lchild(_lchild), rchild(_rchild) {}
   // AVLNode(KeyType _key = 0, AVLNode *_parent = nullptr, AVLDataType _data = (AVLDataType)NULL, AVLNode *_lchild = nullptr, AVLNode *_rchild = nullptr) : key(_key), parent(_parent), lchild(_lchild), rchild(_rchild), data(_data) {}
};
using AVLTree = AVLNode *;
//显式实例化作为常用的可用模板函数的标识(比注释显眼)
template AVLTree search(const AVLTree &root, KeyType x, AVLTree &father);
template AVLTree create(vector<KeyType> s); //注意使用时显式指定参数
template AVLTree deleteNode(AVLTree &root, KeyType x);
template void InOrder(AVLTree &root);
template void PrintKey(AVLTree &root);
template void FreeTree(AVLTree &root);
bool insert(AVLTree &root, KeyType x, AVLDataType d = (AVLDataType)NULL);
bool remove(AVLTree &root, KeyType x);
//3+4重构
AVLTree connect34(AVLTree a, AVLTree b, AVLTree c, AVLTree T0, AVLTree T1, AVLTree T2, AVLTree T3);
AVLTree rotate(AVLTree v); //旋转子树，传入的为最下的结点
