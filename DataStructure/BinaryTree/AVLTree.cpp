/*
 * @Author: fengsc
 * @Date: 2021-11-06 19:19:11
 * @LastEditTime: 2021-12-12 00:24:01
 */
#ifndef _AVLTree_H
#include "AVLTree.h"
#endif // !_AVLTree_H
AVLTree rotate(AVLTree v)
{
    if (!v)
        exit(1);
    AVLTree p = v->parent, g = p->parent; //父结点和祖父节点
    //判断类型,按中序序列传入参数
    if (isLchild(p))
    {
        if (isLchild(v)) //LL
        {
            p->parent = g->parent; //顶部交接
            return connect34(v, p, g, v->lchild, v->rchild, p->rchild, g->rchild);
        }
        else //LR
        {
            v->parent = g->parent;
            return connect34(p, v, g, p->lchild, v->lchild, v->rchild, g->rchild);
        }
    }
    else
    {
        if (isRchild(v)) //RR
        {
            p->parent = g->parent;
            return connect34(g, p, v, g->lchild, p->lchild, v->lchild, v->rchild);
        }
        else //RL
        {
            v->parent = g->parent;
            return connect34(g, v, p, g->lchild, v->lchild, v->rchild, p->rchild);
        }
    }
}
AVLTree connect34(AVLTree a, AVLTree b, AVLTree c, AVLTree T0, AVLTree T1, AVLTree T2, AVLTree T3)
{
    //注意更新高度
    a->lchild = T0;
    if (T0)
        T0->parent = a;
    a->rchild = T1;
    if (T1)
        T1->parent = a;
    updateHeight(a);
    c->lchild = T2;
    if (T2)
        T2->parent = c;
    c->rchild = T3;
    if (T3)
        T3->parent = c;
    updateHeight(c);
    b->lchild = a;
    a->parent = b;
    b->rchild = c;
    c->parent = b;
    updateHeight(b);
    return b;
}
bool insert(AVLTree &root, KeyType x, AVLDataType d)
{
    AVLTree cur, father;
    if (search(root, x, father))
        return false;
    cur = new AVLNode(x, father, d); //注意与父结点链接
    if (isRoot(cur))                 //空树则将当前结点作为根
        root = cur;
    else
        x < father->key ? father->lchild = cur : father->rchild = cur;
    for (AVLTree p = father; p; p = p->parent) //平衡化
    {
        if (abs(getHeight(p->lchild) - getHeight(p->rchild)) >= 2)
        { //p的父结点与旋转后的子树链接,根结点直接修改
            if (isRoot(p))
                root = rotate(tallerChild(tallerChild(p)));
            else
            { //旋转会修改p，需要保存其父结点
                AVLTree par = p->parent;
                isLchild(p) ? par->lchild = rotate(tallerChild(tallerChild(p))) : par->rchild = rotate(tallerChild(tallerChild(p)));
            }
            break; //旋转后即可退出
        }
        else
            updateHeight(p); //更新回溯路径上的高度
    }
    return true;
}
bool remove(AVLTree &root, KeyType x)
{
    if (!root)
        return false;
    AVLTree father, cur, p;
    if (!(cur = search(root, x, father))) //未查找到
        return false;
    p = removeAt(root, cur, father); //删除结点并获取被删结点的父结点
    while (p)                        //向上调整
    {
        if (abs(getHeight(p->lchild) - getHeight(p->rchild)) >= 2)
        {
            if (isRoot(p))
                p = root = rotate(tallerChild(tallerChild(p)));
            else
            {
                AVLTree par;
                par = p->parent;
                p = isLchild(p) ? par->lchild = rotate(tallerChild(tallerChild(p))) : par->rchild = rotate(tallerChild(tallerChild(p)));
            }
        }
        updateHeight(p); //需做O(logn)次调整,极端情况是每次上溯都要调整，无论是否做过调整，树高度均可能降低
        p = p->parent;
    }
    return true;
}