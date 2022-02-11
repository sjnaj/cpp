#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int flag[10240]= {0};
int flag2[10240]= {0};
struct vnode* prim(struct vnode nodenumber[],int n,int num);
#define max 10000

struct node {
	int adjvex;
	int weight;
	struct node *next = NULL;
};

struct vnode {
	char vertex[15];
	struct node *firstedge = NULL;
};

void DFS(struct vnode nodenumber[], int j);//����ͼ����
//void DFStraverse(struct vnode nodenumber[], int num);

int main() {
	char a[15]= {0};

	scanf("%s",a);

	int num ;
	scanf("%d",&num);
	struct vnode nodenumber[num];
	struct vnode *tree;

	while(1) {
		scanf("%s",a);

		if(!strcmp(a,"VERTEX")) {
			int numb;
			scanf("%d",&numb);
			scanf("%s",nodenumber[numb].vertex);
		}
		if(!strcmp(a,"EDGE")) {
			struct node *p,*q,*r;
			int b,c,d;

			p = (struct node *)malloc(sizeof(struct node));
			r = (struct node *)malloc(sizeof(struct node));
			scanf("%d%d%d",&b,&c,&d);//b�Ƕ�����ţ�c�Ǳߵ���һ�������ţ�d�������ߵ�Ȩ��
			p->adjvex = c;
			p->weight = d;
			p->next = NULL;

			r->adjvex = b;
			r->weight = d;
			r->next = NULL;
			if(nodenumber[b].firstedge == NULL) {
				nodenumber[b].firstedge = p;

				if(nodenumber[p->adjvex].firstedge == NULL)
					nodenumber[p->adjvex].firstedge = r;
				else {
					q = nodenumber[p->adjvex].firstedge;
					while(q->next != NULL) {
						q = q->next;
					}
					q->next = r;
				}
			} else {
				q = nodenumber[b].firstedge ;
				while(q->next != NULL) {
					q = q->next;
				}
				q->next = p;

				if(nodenumber[p->adjvex].firstedge == NULL)
					nodenumber[p->adjvex].firstedge = r;
				else {
					q = nodenumber[p->adjvex].firstedge;
					while(q->next != NULL) {
						q = q->next;
					}
					q->next = r;
				}
			}
		}
		if(!strcmp(a,"DFS")) {
			int m;
			scanf("%d",&m);
			DFS(nodenumber,m);//�ӵ�m���ڵ㿪ʼ����ͼ
			printf("\n");

		}
		if(!strcmp(a,"DUMP")) {
			DFS(nodenumber,0);
			printf("\n");
		}
		if(!strcmp(a,"SPANNING-TREE")) {
			int n;
			scanf("%d",&n);
			tree = prim(nodenumber,n,num);
			DFS(tree,n);
			printf("\n");
		}

	}




	return 0;
}

void DFS(struct vnode nodenumber[], int j) {
	struct node *p;
	int k;
	flag[j] = 1;
	printf("%s ",nodenumber[j].vertex);
	p = nodenumber[j].firstedge;
	while(p) {
		k = p->adjvex;
		if(!flag[k])
			DFS(nodenumber,k);
		p = p->next;
	}

}

/*void DFStraverse(struct vnode nodenumber[], int num){
    int i ;
    for(i=0;i<num;i++)
        if(!flag[i])
            DFS(nodenumber,i);
}*/

struct vnode *prim(struct vnode nodenumber[],int n,int num) { //nΪ�ӵ�n���ڵ㿪ʼ������ ��numΪͼ����ĸ���
	struct vnode *tree;
	tree =  (struct vnode*)malloc(num * sizeof(struct vnode) );
	
	for(int t = 0; t < num ; t++)
		tree[t].firstedge = NULL;
	
	flag2[n] = 1;
	//tree[n] = nodenumber[n];
	struct node *p,*q,*r,*s=(struct node *)malloc(sizeof(struct node));
	int i,j,k,m,min = max;
	
	for(j = 0; j < num -1; j++) {
		min = max;
		for(i = 0; i < num; i++) {
			if(flag2[i] == 1 ) {
				p = nodenumber[i].firstedge;
				while(p) {
					if(flag2[i] == 1 && p->weight < min && flag2[p->adjvex] ==0) {
						min = p->weight;
						k = p->adjvex;//K�洢��һ��������
						q = p;//q����һ����ĵ�ַ��������
						m = i;//m�洢��������
					}
					p = p->next;//�ҳ�����С�ıߺ����ŽӵĶ���K��
				}
			}

		}
		flag2[k] = 1;

		s->adjvex = m;
		s->weight = min;
		s->next = NULL;

		if(tree[m].firstedge == NULL)
			tree[m].firstedge = q;
		else {
			r = tree[m].firstedge;
			while(r->next != NULL)
				r = r->next;
			r->next = q;
		}
		if(tree[k].firstedge == NULL)
			tree[k].firstedge = s;
		else {
			r = tree[m].firstedge;
			while(r->next != NULL)
				r = r->next;
			r->next = s;
		}
		p = NULL;
	}

	return tree;
}
