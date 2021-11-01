/*
 * @Author: fengsc
 * @Date: 2021-10-14 14:32:49
 * @LastEditTime: 2021-10-25 19:33:30
 */
#pragma once
#include <memory>
#include <iostream>
#include <vector>
#include <typeinfo>
#include "typeName.h"
//template <typename T> class BlobPtr;
template <typename T>
class Blob
{
    template <typename X>
    friend class BlobPtr;

public:
    std::shared_ptr<std::vector<T>> data;
    typedef typename std::vector<T>::size_type sizeType; //typename告诉编译器sizetype是一个类型而不是静态成员
    Blob();
    template <typename It>
    Blob(It b, It e) : data(std::make_shared<std::vector<T>>(b, e)) {}
    Blob(std::initializer_list<T> il);
    sizeType size() const { return data->size(); }
    bool empty() const { return data->empty(); }
    void pushBack(const T &t) { data->push_back(t); }
    void pushBack(T &&t) { data->push_back(std::move(t)); }
    void popBack();
    T &back();
    T &operator[](sizeType i); //内部用vector实现，不能用const元素初始化，所以没必要设置const版的重载
    virtual ~Blob() = default;

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
template <typename T>
class DeriveBlob : public Blob<T>
{
};
template <typename T>
Blob<T> &CastTest(DeriveBlob<T> &d)
{
    Blob<T> tmp;
    Blob<T> &b = tmp;
    try
    {
        std::cout << typeid(d).name() << " to " << typeid(b).name() << std::endl;
        b = dynamic_cast<Blob<T> &>(d); //内部定义的变量对外部不可见
    }
    catch (const std::bad_cast bad)
    {
        std::cerr << "Caught:" << bad.what() << std::endl;
    }
    return b;
}
template <typename T>
DeriveBlob<T> &CastTest(Blob<T> &b)
{
    DeriveBlob<T> tmp;
    DeriveBlob<T> &d = tmp;
    try
    {
        std::cout << typeid(b).name() << " to " << typeid(d).name() << std::endl;
        d = dynamic_cast<DeriveBlob<T> &>(b);
    }
    catch (const std::bad_cast bad)
    {
        std::cerr << "Caught:" << bad.what() << '\n';
    }
    return d;
}
template <typename T> //指向Blob中的元素
class BlobPtr
{
public:
    BlobPtr() : curr(0) {}
    BlobPtr(const Blob<T> &b, size_t ze = 0) : wptr(b.data), curr(ze) {}
    T &operator*() const
    {
        auto p = check(curr, "dereference out of range");
        return (*p)[curr];
    }
    BlobPtr &operator++();
    BlobPtr &operator--();
    BlobPtr operator++(int i);
    BlobPtr operator--(int i);

private:
    size_t curr;
    std::shared_ptr<std::vector<T>> check(size_t size, const std::string &msg) const;
    std::weak_ptr<std::vector<T>> wptr;
};
template <typename T>
BlobPtr<T> &BlobPtr<T>::operator++()
{
    ++curr;
    return *this;
}
template <typename T>
BlobPtr<T> &BlobPtr<T>::operator--()
{
    --curr;
    return *this;
}
template <typename T>
BlobPtr<T> BlobPtr<T>::operator++(int i)
{
    BlobPtr tmp = *this;
    curr++;
    return tmp;
}
template <typename T>
BlobPtr<T> BlobPtr<T>::operator--(int i)
{
    BlobPtr tmp = *this;
    curr--;
    return tmp;
}
template <typename T>
std::shared_ptr<std::vector<T>> BlobPtr<T>::check(size_t size, const std::string &msg) const
{
    auto ptr = wptr.lock();
    if (!ptr || size >= ptr->size())
        throw std::out_of_range(msg);
    return std::shared_ptr<std::vector<T>>(ptr);
}
