/*
 * @Author: fengsc
 * @Date: 2021-06-07 23:14:35
 * @LastEditTime: 2021-06-08 19:00:46
 */
#include<iostream>
#include <stdlib.h>
#include <stdio.h>
using namespace std;
typedef struct GLNode{
    int tag;//标志域
    union{//只能存在一个，否则会溢出保错
        int atom;//原子结点的值域
        struct GLNode *hp;//子表结点的指针域，hp指向表头//*下级
    };
    struct GLNode *tp;//这里的tp相当于链表的next指针，用于指向下一个数据元素//*同级
}*Glist;

Glist creatGlist(Glist&);
int GlistLength(Glist C);
int main()
{
    Glist C=creatGlist(C);//*Glist C;C=creatGlist
cout<<GlistLength(C)<<endl;
return 0;
}
Glist creatGlist(Glist &C){
    C = new GLNode;
    C->tag=1;
    C->hp=new GLNode;
    C->tp=NULL;
    //表头原子a
    C->hp->tag=0;
    C->hp->atom='a';
    C->hp->tp=new GLNode;
    C->hp->tp->tag=1;
    C->hp->tp->hp=new GLNode;
    C->hp->tp->tp=NULL;
    //原子b
    C->hp->tp->hp->tag=0;
    C->hp->tp->hp->atom='b';
    C->hp->tp->hp->tp=new GLNode;
    //原子c
    C->hp->tp->hp->tp->tag=0;
    C->hp->tp->hp->tp->atom='c';
    C->hp->tp->hp->tp->tp=new GLNode;
    //原子d
    C->hp->tp->hp->tp->tp->tag=0;
    C->hp->tp->hp->tp->tp->atom='d';
    C->hp->tp->hp->tp->tp->tp=NULL;
    return C;
}
int GlistLength(Glist C){
    int Number=0;
    Glist P=C->hp;
    while(P){
        Number++;
        P=P->tp;
    }
    return Number;
}