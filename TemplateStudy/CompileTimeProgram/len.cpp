#include <iostream>
template <typename T, unsigned N>
std::size_t len(T (&)[N])
{
    return N;
}
template <typename T>
typename T::size_type len(T const &t)
{
    return t.size();
}
std::size_t len(...)
{
    return 0;
}
#include <vector>
int main()
{
    int a[10];
    std::cout << len(a);
    std::cout << len("tmp");

    std::vector<int> v;
    std::cout << len(v);

    int *p;
    std::cout << len(p);//match 3

    std::allocator<int> x;
    // std::cout << len(x);//match 2,do not has size()
}