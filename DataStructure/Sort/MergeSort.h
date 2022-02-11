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
    //����ʹ��vector��A��C������ʽ��ʾ��array[lo+i]=A[i],array[mi+i]=C[i];
    vector<T> B(array.begin() + lo, array.begin() + mi); //ǰ������B[0, lb) <-- A[lo, mi)
    int k = 0, lc = hi - mi;
    //��������C[0, lc) = A[mi, hi)���͵�
    while ((j < lb) && (k < lc))                                                 //�����رȽ�B��C����Ԫ��
        array[lo + i++] = !comp(array[mi + k], B[j]) ? B[j++] : array[mi + k++]; //����С(��)�߹���A��
    while (j < lb)                                                               //��C�Ⱥľ�����
        array[lo + i++] = B[j++];                                                //��B����ĺ�׺����A��,��B�Ⱥľ�,����C��ԭ�ռ�洢���ʿ����˳�ѭ��
                                                                                 //ע�⣬C��Ӧ��ָ��λʼ����A֮ǰ�������ܷ�������
}
template <typename T, typename Comp> //�����鲢����
void _mergeSort(vector<T> &array, int lo, int hi, Comp comp)
{
    if (hi - lo < 2)
        return;                      //��Ԫ��������Ȼ���򣬷���...
    int mi = (lo + hi) / 2;          //���е�Ϊ��
    _mergeSort(array, lo, mi, comp); //����ǰ�պ�
    _mergeSort(array, mi, hi, comp); //�ֱ�����
    merge(array, lo, mi, hi, comp);  //�鲢
}
template <typename T, typename Comp = std::less<T>>          //��Ҫ�ṩĬ��ģ��������ͣ�����ȱʡ״̬�����ƶϳ�
void mergeSort(vector<T> &array, Comp comp = std::less<T>()) //ע����ΪĬ���β�Ҫ������(��һ��ʵ��)����Ϊ���������򲻴�
{
    _mergeSort(array, 0, array.size(), comp);
}
