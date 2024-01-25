template <typename T>
class my_shared_ptr
{
private:
    T *_ptr;
    int *_count;

public:
    my_shared_ptr() : _ptr(nullptr), _count(nullptr) {}
    my_shared_ptr(T *ptr) : _ptr(ptr), _count(new int(1)) {}
    my_shared_ptr &operator=(const my_shared_ptr &other)
    {
        if (this == &other)
        {
            return *this;
        }
        ++*other._count;
        if (_ptr && --*_count == 0)
        {
            delete _ptr;
            delete _count;
        }
        _count = other._count;
        _ptr = other._ptr;
        return *this;
    }
    my_shared_ptr &operator=(my_shared_ptr &&other)
    {
        if (_ptr && --*_count == 0)
        {
            delete _ptr;
            delete _count;
        }
        _ptr = other._ptr;
        _count = other._count;
        other._ptr = nullptr;
        return *this;
    }
    T *operator->() const { return _ptr; }
    T &operator*() const { return *_ptr; }
    T *get() const { return _ptr; }
    T *get_count() const
    {
        if (_count == nullptr)
            return 0;
        return *_count;
    }
    ~my_shared_ptr() noexcept
    {
        if (_ptr && --*_count == 0)
        {
            delete _ptr;
            delete _count;
        }
    }
    std::shared_ptr<int>
};
#include <iostream>
#include <memory>
std::shared_ptr<int>();