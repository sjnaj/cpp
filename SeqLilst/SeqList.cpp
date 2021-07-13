/*
 * @Author: fengsc
 * @Date: 2021-07-04 22:43:36
 * @LastEditTime: 2021-07-13 10:45:47
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
void InitVal(SeqList &L,int Num)
{
    int Flag;
    if(L.num)
    {
        cout << "The sequence has been created. Continuing will override the original value,press 1 to continue,0 to quit" << endl;
    
    cin >>Flag;
    if(!Flag)
    return;}
for(int i=0;i<Num;i++)
{
    cin >> L.data[i];
    L.num++;
}
}

void ClearList(SeqList &L)
{
    L.num = 0;
}
int Length(SeqList &L)
{
    return L.num;
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
        else L.num--;
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
    if(!L.num)
    {
        cout << "Seqlist is empty"<<endl;
        return;
    }
    for (int i = 0; i < L.num; i++)
        cout << L.data[i] << endl;
}