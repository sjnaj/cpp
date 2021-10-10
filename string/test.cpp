/*
 * @Author: fengsc
 * @Date: 2021-06-28 20:52:49
 * @LastEditTime: 2021-07-12 19:16:34
 */
/*#include <stdio.h>
void swap(int &a,int &b)
{
    int temp=a;a=b;b=temp;

}
int main()
{
    int a=1,b=2;
    int &c=a,&d=b;
    swap(c,d);
    return 0;
}*/
/*#include <stdio.h>
#include <stdlib.h>
using namespace std;

int main()
{
    int *s[2];
    for (int i = 0; i < 2; i++)
        s[i] = (int *)malloc(3 * sizeof(int));
        for(int j = 0; j <2;j++)
        {
            for(int k = 0;k<3;k++)
            s[j][k]=1;
        }
        for(int j = 0; j <2;j++)
        free(s[j]);
        printf("%d",s[1][1]);
        return 0;
}*/
/*#include <iostream>
#include <math.h>
#include <sys/time.h>
#include <unistd.h>
typedef long long ll;
struct timeval  start_time,end_time;
ll fraction(int n)
{
    if (n == 1 || n == 0)
        return 1;
    else
        {usleep(1000000);
            return n * fraction(n - 1);}
}
//clock_t start_time, end_time;
using namespace std;
int main()
{
    int n;
   // double result;
    cin >> n;
   // start_time = clock();
    gettimeofday(&start_time,NULL);
   // printf("%d\n",start_time);
   getchar();
 //  getchar();
    for(int i = 0; i < n; i++)
    {//printf("%ld\n",clock());
        printf("%lld\n",fraction(i));
    }
   // end_time = clock();
gettimeofday(&end_time,NULL);
  //  printf("%d\n",end_time);
  printf("%lf",(end_time.tv_sec-start_time.tv_sec)+(double)(end_time.tv_usec-start_time.tv_usec)/CLOCKS_PER_SEC);
    return 0;
}
*/
/*#include <iostream>
int Max3(int a, int b, int c);
int MaxSubSum(const int A[], int Left, int Right);
int main()
{
    int a[5] = {1, 3, 5, 6, 8};
    printf("%d", MaxSubSum(a, 0, 4));
    return 0;
}
int Max3(int a, int b, int c)
{
    if (a > b)
        return a;
    else if (c > b)
        return c;
    else
        return b;
}
int MaxSubSum(const int A[], int Left, int Right)
{
    int MaxLeftSum, MaxRightSum;
    int MaxLeftBorderSum, MaxRightBorderSum;
    int LeftBorderSum, RightBorderSum;
    int Center, i;
    if (Left == Right)
        if (A[Left] > 0)
            return A[Left];
        else
            return 0;
    Center = (Left + Right) / 2;
    MaxLeftSum = MaxSubSum(A, Left, Center);
    MaxRightSum = MaxSubSum(A, Center + 1, Right);
    MaxLeftBorderSum = 0;
    LeftBorderSum = 0;
    for (i = Center; i >= Left; i--)
    {
        LeftBorderSum += A[i];
        if (LeftBorderSum > MaxLeftBorderSum)
            MaxLeftBorderSum = LeftBorderSum;
    }
    MaxRightBorderSum = 0;
    RightBorderSum = 0;
    for (i = Center + 1; i <= Right; i++)
    {
        RightBorderSum += A[i];
        if (RightBorderSum > MaxRightBorderSum)
            MaxRightBorderSum = RightBorderSum;
    }
    return Max3(MaxLeftSum, MaxRightSum, MaxLeftBorderSum + MaxRightBorderSum);
}*/
/*#include <stdio.h>
#define MAXN 20

void CountOff(int n, int m, int out[]);

int main()
{
    int out[MAXN], n, m;
    int i;

    scanf("%d %d", &n, &m);
    CountOff(n, m, out);
    for (i = 0; i < n; i++)
        printf("%d ", out[i]);
    printf("\n");

    return 0;
}



void CountOff(int n, int m, int out[])
{
    int i, count = m - 1, times, numb = 1; //count是每次出局的人的下标，times是移动的次数，numb是出局的顺序
    for (i = 0; i < n; i++)
        out[i] = 0;
    for (i = 0; i < n-1; i++)
    {
        out[count] = numb;
        for (times = 0; times < m;)
        {
            count++;
            if (count == n)
                count = 0;
            if (out[count] == 0)
                times++;
        }
        numb++;
    }
    out[count] =numb;
}*/
/*#include <iostream>
#include <sys/time.h>
#define MAXN 5
using namespace std;
int main()
{
     int A[MAXN], i;
    for (i = 0; i < MAXN; i++)
    {
        A[i] = i + 1;
    }
    for (i = 0; i < MAXN; i++)
    {
        srand(time(NULL));
        swap(A[i], A[rand() % (i+1)]);
    }

    for (i = 0; i < MAXN; i++)
        printf("%d ", A[i]);

        return 0;
}
*/
#include <iostream>
using namespace std;
typedef struct
{
    int *num;
} Stu;
void Change(Stu );

int main()
{

    Stu A;
    A.num=new int[5];
for( int i = 0; i <5; i++)
{
    A.num[i] =i+2;
}
    Change(A);
    return 0;

}
void Change(Stu A)
{
    int *Temp=A.num;
    int i = 0, j = 0;
    while (Temp[j])
    {
        if (Temp[i] != 3)
        {
        A.num[j++] = Temp[i];
        }
        i++;
    }


}