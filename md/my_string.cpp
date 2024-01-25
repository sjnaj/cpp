#include <iostream>
#include <string>
#include <string.h>
class my_string
{
private:
    char *_data;
    size_t _size;

public:
    my_string(const char *p = nullptr)
    {
        if (p == nullptr)
        {
            _data = new char[1];
            _data[0] = 0;
            _size = 0;
        }
        else
        {
            _size = strlen(p);
            _data = new char[_size + 1];
            strcpy(_data, p);
        }
    }
    my_string(const my_string &other)
    {
        _size = other._size;
        _data = new char[_size + 1];
        strcpy(_data, other._data);
    }
    my_string(my_string &&other)
    {
        _size = other._size;
        _data = other._data;
        other._data = nullptr;
    }
    my_string &operator=(const my_string &other)
    {
        if (&other == this)
        {
            return *this;
        }

        delete[] _data;
        _size = other._size;
        _data = new char[_size + 1];
        strcpy(_data, other._data);
        return *this;
    }
    my_string &operator=(my_string &&other)
    {
        if (&other == this)
        {
            return *this;
        }
        delete[] _data;
        _data = other._data;
        _size = other._size;
        other._data = nullptr;
        return *this;
    }
    ~my_string()
    {
        delete[] _data;
    }
};