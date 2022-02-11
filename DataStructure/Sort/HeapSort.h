/*
 * @Author: fengsc
 * @Date: 2021-12-26 11:29:07
 * @LastEditTime: 2022-01-25 13:48:39
 */
#include "/home/fengsc/Desktop/cpp/DataStructure/Quene/PrioQueen.h"
template <typename T, typename Comp = std::less<T>> //默认升序
void heapSort(std::vector<T> &array, Comp comp = std::less<T>())
{
    //由于malloc不调用构造函数所以在有内存监测的情况下不能使用string，否则会报错
    PQueen<T, T> Q(array); //默认建立小根堆，产生降序序列
    for (int i = Q.n - 1; i > 0; i--)
    {
        std::swap(Q.elem[i], Q.elem[0]);
        Q.siftDown(0, i); //注意siftDown是前闭后开的
    }
    for (int i = 0; i < Q.n; i++)                              //根据比较函数类型重新填入结果，排序算法本身空间复杂度是O(1)
        if (std::is_same<decltype(comp), std::less<T>>::value) //降序
            array[Q.n - i - 1] = Q.elem[i]->key;
        else //升序
            array[i] = Q.elem[i]->key;
}