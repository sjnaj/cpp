/*
 * @Author: fengsc
 * @Date: 2021-10-14 14:32:49
 * @LastEditTime: 2021-10-15 15:53:00
 */
#pragma once
#include <memory>
#include <iostream>
#include <vector>
template <typename T>
class Blob
{
public:
    std::shared_ptr<std::vector<T>> data;
    typedef typename std::vector<T>::size_type sizeType; //typename告诉编译器sizetype是一个类型而不是成员
    Blob();
    Blob(std::initializer_list<T> il);
    sizeType size() const { return data->size(); }
    bool empty() const { return data->empty(); }
    void pushBack(const T &t) { data->push_back(t); }
    void pushBack(T &&t) { data->push_back(std::move(t)); } //左值转换为右值引用,实现移动构造(原实参被销毁)
    void popBack();
    T &back();
    T &operator[](sizeType i); //内部用vector实现，不能用const元素初始化，所以没必要设置const版的重载
private:
    void check(sizeType i, const std::string &msg) const;
    void handle_out_of_memory(const std::exception &e)
    {
        std::cerr << e.what() << std::endl;
    }
};
template <typename T>
Blob<T>::Blob() : data(std::make_shared<std::vector<T>>()) {}
template <typename T>
Blob<T>::Blob(std::initializer_list<T> il)
try : data(std::make_shared<std::vector<T>>(il))
{
}
catch (const std::bad_alloc &e)
{
    handle_out_of_memory(e);
}
template <typename T>
void Blob<T>::check(sizeType i, const std::string &msg) const
{
    if (i >= data->size())
        throw std::out_of_range(msg);
}
template <typename T>
T &Blob<T>::back()
{
    check(0, "back on empty Blob");
    return data->back();
}
template <typename T>
T &Blob<T>::operator[](sizeType i)
{
    check(i, "subscript out of range");
    return (*data)[i];
}
template <typename T>
void Blob<T>::popBack()
{
    check(0, "popback on empty Blob");
    data->pop_back();
}
