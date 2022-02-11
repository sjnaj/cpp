/*
 * @Author: fengsc
 * @Date: 2021-12-26 20:37:44
 * @LastEditTime: 2022-01-25 13:49:33
 */
#include <vector>
using std::vector;
template <typename T, typename Comp>
void merge(vector<T> &array, int lo, int mi, int hi, Comp comp)
{
    int i = 0, j = 0, lb = mi - lo;
    //由于使用vector，A和C不能显式表示，array[lo+i]=A[i],array[mi+i]=C[i];
    vector<T> B(array.begin() + lo, array.begin() + mi); //前子向量B[0, lb) <-- A[lo, mi)
    int k = 0, lc = hi - mi;
    //后子向量C[0, lc) = A[mi, hi)，就地
    while ((j < lb) && (k < lc))                                                 //反复地比较B、C的首元素
        array[lo + i++] = !comp(array[mi + k], B[j]) ? B[j++] : array[mi + k++]; //将更小(大)者归入A中
    while (j < lb)                                                               //若C先耗尽，则
        array[lo + i++] = B[j++];                                                //将B残余的后缀归入A中,若B先耗尽,由于C在原空间存储，故可以退出循环
                                                                                 //注意，C对应的指针位始终在A之前，不可能发生覆盖
}
template <typename T, typename Comp> //向量归并排序
void _mergeSort(vector<T> &array, int lo, int hi, Comp comp)
{
    if (hi - lo < 2)
        return;                      //单元素区间自然有序，否则...
    int mi = (lo + hi) / 2;          //以中点为界
    _mergeSort(array, lo, mi, comp); //区间前闭后开
    _mergeSort(array, mi, hi, comp); //分别排序
    merge(array, lo, mi, hi, comp);  //归并
}
template <typename T, typename Comp = std::less<T>>          //需要提供默认模板参数类型，否则缺省状态不能推断出
void mergeSort(vector<T> &array, Comp comp = std::less<T>()) //注意作为默认形参要带括号(是一个实例)，作为参数类型则不带
{
    _mergeSort(array, 0, array.size(), comp);
}
