#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string.h>

typedef struct bistnode
{
	struct
	{
		int key;
		char val[1024] = {0};
	} data;
	struct bistnode *lchild, *rchild;
} BiSTNode, *BiSTree;

BiSTree BST_InsertNode(BiSTree t, int kx);
BiSTNode *BST_Search2(BiSTree t, int kx);
BiSTree BST_DeleteNode(BiSTree t, int kx);
int IsSearchTree(BiSTree t);
int NodeCount(BiSTree t);
int TreeHeight(BiSTree t);
void inorderprint(BiSTree t);

int main()
{
	BiSTree t = NULL;
	int kx;
	char a[10] = {0};

	scanf("%s", a);
	while (1)
	{

		if (!strcmp(a, "insert"))
		{
			scanf("%d", &kx);
			t = BST_InsertNode(t, kx);
			scanf("%s", a);
		}

		else if (!strcmp(a, "delete"))
		{
			scanf("%d", &kx);
			if(kx==67)
				kx=67;
			t = BST_DeleteNode(t, kx);
			scanf("%s", a);
		}

		else if (!strcmp(a, "search"))
		{
			scanf("%d", &kx);
			BST_Search2(t, kx);
			scanf("%s", a);
		}

		else if (!strcmp(a, "status"))
		{
			if (IsSearchTree(t))
				printf("�Ƕ���������\n");
			else
				printf("���Ƕ���������\n");

			printf("�������Ľڵ���Ŀ��%d\n", NodeCount(t));
			printf("�������ĸ߶���%d\n", TreeHeight(t));
			printf("��������˳���ǣ�");
			inorderprint(t);
			scanf("%s", a);
		}
		else if (!strcmp(a, "bye"))
			break;
	}

	return 0;
}

BiSTree BST_InsertNode(BiSTree t, int kx)
{ //�����������в���һ���ڵ�
	BiSTNode *f, *p, *s;
	p = t;
	while (p)
	{
		if (kx == p->data.key)
		{
			printf("kx �Ѵ��ڣ��������");
			return (t);
		}
		else
		{
			f = p;
			if (kx < p->data.key)
				p = p->lchild;
			else
				p = p->rchild;
		}
	}

	s = (BiSTNode *)malloc(sizeof(BiSTNode));
	s->data.key = kx;
	scanf("%s", s->data.val);
	s->lchild = NULL;
	s->rchild = NULL;

	if (!t)
		t = s;
	else if (kx < f->data.key)
		f->lchild = s;
	else
		f->rchild = s;

	return (t);
}

BiSTNode *BST_Search2(BiSTree t, int kx)
{ //�õݹ��ڶ����������н��в���
	if (t == NULL)
	{
		printf("����ʧ��\n");
		return (t);
	}
	else if (t->data.key == kx)
	{
		printf("��Ҫ���ҵĽڵ��valֵ��%s\n", t->data.val);
		return (t);
	}
	else if (kx < t->data.key)
		BST_Search2(t->lchild, kx);
	else
		BST_Search2(t->rchild, kx);

	return t;
}

BiSTree BST_DeleteNode(BiSTree t, int kx)
{ //ɾ���ڵ�
	BiSTNode *f, *p, *r, *s, *pres;

	p = t;
	f = NULL;

	while (p && p->data.key != kx)
	{
		f = p;
		if (kx < p->data.key)
			p = p->lchild;
		else
			p = p->rchild;
	}

	if (!p)
	{
		printf("kx�����ڣ�����ɾ����");
		return t;
	}

	if (p->lchild && p->rchild)
	{
		pres = p;
		s = p->rchild;

		while (s->lchild)
		{
			pres = s;
			s = s->lchild;
		}

		p->data = s->data;
		r = s->rchild;

		if (pres == p)
			pres->rchild = NULL;
		else
			pres->lchild = r;
		free(s);
		return t;
	}
	else
	{
		if (p->lchild == NULL && p->rchild == NULL)
		{
			r = NULL;
		}
		else
		{
			if (p->lchild == NULL)
				r = p->rchild;
			else
				r = p->lchild;
		}
		if (f)
			if (f->lchild == p)
				f->lchild = r;
			else
				f->rchild = r;
		else t=r;
		free(p);
		return t;
	}
}

int IsSearchTree(BiSTree t) //�ݹ�����������Ƿ�Ϊ����������
{
	if (!t) //�ն��������
		return 1;
	else if (!(t->lchild) && !(t->rchild)) //���������������
		return 1;
	else if ((t->lchild) && !(t->rchild)) //ֻ�����������
	{
		if (t->lchild->data.key > t->data.key)
			return 0;
		else
			return IsSearchTree(t->lchild);
	}
	else if ((t->rchild) && !(t->lchild)) //ֻ�����������
	{
		if (t->rchild->data.key < t->data.key)
			return 0;
		else
			return IsSearchTree(t->rchild);
	}
	else //��������ȫ�����
	{
		if ((t->lchild->data.key > t->data.key) || (t->rchild->data.key < t->data.key))
			return 0;
		else
			return (IsSearchTree(t->lchild) && IsSearchTree(t->rchild));
	}
}

int NodeCount(BiSTree t) //ͳ�ƶ������Ľڵ���Ŀ
{
	if (t == NULL)
		return 0;
	else
		return NodeCount(t->lchild) + NodeCount(t->rchild) + 1;
}

int TreeHeight(BiSTree t) //��������ĸ߶�
{
	if (t == NULL) //����������0
		return 0;
	if (t->lchild == NULL && t->rchild == NULL) //��������1
		return 1;
	return ((TreeHeight(t->lchild) > TreeHeight(t->rchild)) ? TreeHeight(t->lchild) + 1 : TreeHeight(t->rchild) + 1); //���ĸ߶� = MAX(�������ĸ߶ȣ��������ĸ߶�) + 1;
}

void inorderprint(BiSTree t)
{ //�����ӡ������
	if (t == NULL)
		return;
	else
	{
		inorderprint(t->lchild);
		printf("%d ", t->data.key);
		inorderprint(t->rchild);
	}
}
