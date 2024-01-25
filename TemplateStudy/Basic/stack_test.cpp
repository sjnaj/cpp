#include <vector>
#include <iostream>

template <typename T>
class Stack
{
private:
    std::vector<T> elems;

public:
    void push(T const &elem);
    void print(std::ostream &strm) const
    {
        for (T const &elem : elems)
        {
            strm << elem << ' ';
        }
    }

    // friend std::ostream &operator<<(std::ostream &strm, Stack<T> const &s)//directly define in class
    // {
    //     s.print(strm);
    //     return strm;
    // }

    template <typename U>
    friend std::ostream &operator<<(std::ostream &, Stack<U> const &); // declare
};
template <typename T>
void Stack<T>::push(T const &elem)
{
    elems.push_back(elem);
}
template <typename U>
std::ostream &operator<<(std::ostream &strm, Stack<U> const &s)
{
    s.print(strm);
    return strm;
}

int main()
{
    Stack<int> s;
    s.push(1);
    s.push(2);
    s.print(std::cout);
    std::cout << s << std::endl;
}