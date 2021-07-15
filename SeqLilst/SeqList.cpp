/*
 * @Author: fengsc
 * @Date: 2021-07-04 22:43:36
 * @LastEditTime: 2021-07-15 23:32:45
 */

//#include "SeqList.h"
void InitList(SeqList &L, int InitSize)
{
    if (L.data = (DataType *)malloc(sizeof(DataType) * InitSize))
    {
        L.Maxsize = InitSize;
        L.num = 0;
    }
    else
    {
        cout << "Initialization failure" << endl;
        exit(1);
    }
}
void InitVal(SeqList &L, int Num)
{
    int Flag;
    if (L.num)
    {
        cout << "The sequence has been created. Continuing will override the original value,press 1 to continue,0 to quit" << endl;

        cin >> Flag;
        if (!Flag)
            return;
    }
    for (int i = 0; i < Num; i++)
    {
        cin >> L.data[i];
        L.num++;
    }
}

void ClearList(SeqList &L)
{
    free(L.data);
    L.num = 0;
}
int Insert(SeqList &L, int Loc, DataType &x)
{
    if (L.num == L.Maxsize)
    {
        cout << "The storage spase is full" << endl;
        return false;
    }
    if (Loc < 1 || Loc > L.num + 1)
    {
        cout << "Loc error" << endl;
        return false;
    }

    {

        for (int i = L.num; i >= Loc; i--)
        {
            L.data[i] = L.data[i - 1];
        }
    }
    L.data[Loc - 1] = x;
    L.num++;
    return true;
}
int DeleteByLoc(SeqList &L, int Loc)
{
    if (!L.num || Loc > L.num || Loc < 1)
        return false;
    for (int i = Loc; i <= L.num; i++)
        L.data[i - 1] = L.data[i];
    L.num--;
    return true;
}
int DeleteByValue(SeqList &L, DataType &x)
{
    if (!L.num)
        return false;
    DataType *Temp = L.data;
    int i = 0, j = 0;
    while (Temp[j])

    {
        if (Temp[i] != x)
        {
            L.data[j++] = Temp[i];
        }
        else
            L.num--;
        i++;
    }

    if (i == j)
        return false;
    return true;
}

int Search(SeqList &L, DataType x)

{
    for (int i = 0; i < L.num; i++)
    {
        if (L.data[i] == x)
            return i + 1;
    }
    return false;
}
void Sort(SeqList &L)
{
    for (int i = 0; i < L.num - 1; i++)
    {
        int index = i;
        DataType Temp;
        for (int j = i + 1; j < L.num; j++)
        {
            if (L.data[j] < L.data[index])
                index = j;
        }
        swap(L.data[i], L.data[index]);
    }
}
void Print(SeqList &L)
{
    if (!L.num)
    {
        cout << "Seqlist is empty" << endl;
        return;
    }
    for (int i = 0; i < L.num; i++)
        cout << L.data[i] << endl;
}
void MemReSet(SeqList &L)
{
    if (L.num > 0.8 * L.Maxsize)
        if (!realloc(L.data, 2 * L.num))
            cout << "Memory allocation error" << endl;
        else
            cout << "Capacity is expanded to:" << L.num << endl;
    else if (L.num < 0, 5 * L.Maxsize)
        if (!realloc(L.data, 0.5 * L.num))
            cout << "Memory allocation error" << endl;
        else
            cout << "Capacity is reduct to:" << L.num << endl;
    else
        cout << "Capacity is appropriate" << endl;
}
int JudgeOrder(SeqList &L)
{
    if (!L.num)
    {
        cout << "List is empty" << endl;
        return false;
    }
    int i, Flag;
    if (L.data[0] < L.data[L.num - 1])
    {
        Flag = 0;
        for (i = 0; i < L.num - 1; i++)
        {
            if (L.data[i] <= L.data[i + 1])
                Flag++;
        }
    }
    else
    {
        Flag = 0;
        for (i = 0; i < L.num - 1; i++)
        {
            if (L.data[i] >= L.data[i + 1])
                Flag++;
        }
    }
    if (Flag == L.num - 1)
        return true;
    else
        return false;
}
void MergeOrderList(SeqList &A, SeqList &B, SeqList &C)
{
    if (A.num + B.num > C.Maxsize)
    {
        cout << "It will be out of bounds after the merger" << endl;
        return;
    }
    else
        C.num = A.num + B.num;
    if (!JudgeOrder(A) || !JudgeOrder(B))
    {
        cout << "exist unordered list,it would be sorted" << endl;
        Sort(A);
        Sort(B);
    }
    int i, j, k;
    i = j = k = 0;
    while (i < A.num && j < B.num) //最好比较min{m,n}次，最多m+n-1次（m必等于n）；
    {
        if (A.data[i] <= B.data[j])
            C.data[k++] = A.data[i++];
        else
            C.data[k++] = B.data[j++];
    }
    while (i < A.num)
    {
        C.data[k++] = A.data[i++];
    }
    while (j < B.num)
    {

        C.data[k++] = B.data[j++];
    }
}
int DeleteSameUnordered(SeqList &L)
{
    if (!L.num)
    {
        cout << "List is empty" << endl;
        return false;
    }
    int i, j, k = 0;
    for (i = 1; i < L.num; i++)
    {
        for (j = 0; j <= k; j++)//k:border of non-repreting region
        {
            if (L.data[i] == L.data[j])
                break;
        }
        if (j > k)
            L.data[++k] = L.data[i];
    }
    L.num = k + 1;
    return true;
}
int DeleteSameOrdered(SeqList &L)
{

    if (!L.num)
    {
        cout << "List is empty" << endl;
        return false;
    }
    if(!JudgeOrder(L))
    {
        cout << "List is unordered" << endl;
        return false;
    }
    int i = 0, j = 0;
    for (i = 1; i < L.num; i++)//j is border
    {
        if (L.data[i] != L.data[j])
            L.data[++j] = L.data[i];
    }
    L.num = j + 1;
    return true;
}
