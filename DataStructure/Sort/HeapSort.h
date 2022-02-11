/*
 * @Author: fengsc
 * @Date: 2021-12-26 11:29:07
 * @LastEditTime: 2022-01-25 13:48:39
 */
#include "/home/fengsc/Desktop/cpp/DataStructure/Quene/PrioQueen.h"
template <typename T, typename Comp = std::less<T>> //Ĭ������
void heapSort(std::vector<T> &array, Comp comp = std::less<T>())
{
    //����malloc�����ù��캯�����������ڴ��������²���ʹ��string������ᱨ��
    PQueen<T, T> Q(array); //Ĭ�Ͻ���С���ѣ�������������
    for (int i = Q.n - 1; i > 0; i--)
    {
        std::swap(Q.elem[i], Q.elem[0]);
        Q.siftDown(0, i); //ע��siftDown��ǰ�պ󿪵�
    }
    for (int i = 0; i < Q.n; i++)                              //���ݱȽϺ������������������������㷨����ռ临�Ӷ���O(1)
        if (std::is_same<decltype(comp), std::less<T>>::value) //����
            array[Q.n - i - 1] = Q.elem[i]->key;
        else //����
            array[i] = Q.elem[i]->key;
}