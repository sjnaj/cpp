/*
 * @Author: fengsc
 * @Date: 2021-10-30 22:55:35
 * @LastEditTime: 2021-10-30 23:25:36
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include<iostream>

int match(char *pth, char *sth);

int main()
{
	char patern[200] = {0}, string[200] = {0};

	scanf("%s %s", patern, string);

	if (match(patern, string))
	{
		printf("满足通配条件\n");
	}
	else
		printf("不满足通配条件\n");

	return 0;
}

int match(char *pth, char *sth)
{
	int i;
	if (pth[0] == '\0')
	{
		if (sth[0] == '\0')
		{
			return 1;
		}
		else
			return 0;
	}
	else if (pth[0] != '*')
	{
		if (sth[0] == pth[0])
		{
			return match(pth + 1, sth + 1);
		}
		else
			return 0;
	}
	else
	{
		for (i = 0; i <= strlen(sth); i++)
		{
			if (match(pth + 1, sth + i))
			{
				return 1;
			}
		}
	}
	return 0;
}
