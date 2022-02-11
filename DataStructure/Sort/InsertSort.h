/*
 * @Author: fengsc
 * @Date: 2021-12-27 10:11:18
 * @LastEditTime: 2022-01-25 13:49:03
 */
#include <vector>
using std ::vector;
template <typename T, typename Comp = std::less<T>>
void insertSort(vector<T> &array, Comp comp = std::less<T>())
{
    T temp;
    for (int i = 1,j; i < array.size(); i++)
    {
        if (comp(array[i], array[i - 1]))
        {
            temp = array[i];
            for (j = i - 1; j > -1 && comp(temp, array[j]); j--)
                array[j + 1] = array[j];
            array[j + 1] = temp;
        }
    }
}