#include <deque>
template <typename T, typename Cont = std::deque<T>>
class Stack
{
private:
    Cont elems;

public:
    void push(T const &);
    void pop();
    T const &top() const;
    bool empty() const
    {
        return elems.empty();
    }

    template <typename T2, typename Cont2>
    Stack &operator=(Stack<T2, Cont2> const &);
    template <typename, typename>
    friend class Stack;//to get access to all the other type obj
};
template <typename T, typename Cont>
template <typename T2, typename Cont2>
Stack<T, Cont> &Stack<T, Cont>::operator=(Stack<T2, Cont2> const &op2)
{
    elems.clear();
    elems.insert(elems.begin(), op2.elems.begin(), op2.elems.end());
    return *this;
}

int main()
{
    Stack<int> intStack;
    Stack<float> floatStack;
    floatStack = intStack;
}