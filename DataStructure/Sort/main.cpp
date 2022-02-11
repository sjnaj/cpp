/*
 * @Author: fengsc
 * @Date: 2021-12-26 11:55:46
 * @LastEditTime: 2021-12-27 10:18:44
 */
#include <iostream>
#include "HeapSort.h"
#include "MergeSort.h"
#include "InsertSort.h"
using namespace std;
/*
int main()  
{
    vector<string> test = {"0", "1", "24", "23", "34", "15"};
    heapSort(test);
    for (int i = 0; i < test.size(); i++)
        cout << test[i] << ' ';
    cout << endl;
}*/
/*
int main()
{
    vector<int> test{12, 43, 2, 32, 1, 43, 54, 2, 65, 67, 344};
    mergeSort(test);
    for (int i = 0; i < test.size(); i++)
        cout << test[i] << ' ';
    cout << endl;
}*/
int main()
{
    vector<int> test{12, 43, 2, 32, 1, 43, 54, 2, 65, 67, 344};
    insertSort(test,std::greater<int>());
    for (int i = 0; i < test.size(); i++)
        cout << test[i] << ' ';
    cout << endl;
}