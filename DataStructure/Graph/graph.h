/*
 * @Author: fengsc
 * @Date: 2021-12-10 10:37:47
 * @LastEditTime: 2021-12-10 10:40:40
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define NAME_SIZE 32
#define INFINITY 0x7fffffff

/* 初始化图的存储结构，顶点个数为n个,顶点号取值为0~（n-1） */
void create(int n);  
/* 设置顶点号index的顶点的名字为name */
void set_vertex_name(int index, char name[NAME_SIZE]);  
/* 增加一条从顶点号start到end的边，权值为weight(小于INFINITY) */
void add_edge(int start, int end, int weight);  

/* 打印出图的内部数据结构 */
void dump(void); 

int get_vertex_num(void); /* 返回图中顶点个数 */
char *get_vertex_name(int index); /* 获取index号顶点的名称 */
int get_weight(int start, int end); /* 连接顶点start和顶点end的边的权值,可能返回INFINITY */
int first_adj(int index); /* 获取顶点index的首个邻接顶点的编号 */
int next_adj(int index, int adj); /* 获取顶点index的adj号邻接顶点的下一个邻接顶点的编号 */
int is_valid_vertex(int adj); /* 判断adj是否为一个有效的顶点编号 */

void dfs(int start); /* 深度优先遍历 */ 
void spanning_tree(int start); /* 从start顶点开始，求最小生成树，打印最小生成树的权值 */ 
void shortest_path(int start, int end); /* 求start顶点开始到顶点end的最短路径，打印路径长度以及从start到end经过的顶点名 */ 
