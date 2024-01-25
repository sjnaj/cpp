#include <iostream>

void print() {}

// template <typename T>
// void print(T arg)
// {
//     std::cout << arg << std::endl;
// }

template <typename T, typename... Types>
void print(T firstArg, Types... args)
{
    std::cout << firstArg << std::endl;
    print(args...);
}
template <typename... Types>
void print1(Types const &...args)
{
    (std::cout << ... << args) << '\n';
}

template <typename T>
class AddSpace
{
private:
    T const &ref;

public:
    AddSpace(T const &r) : ref(r) {}
    friend std::ostream &operator<<(std::ostream &os, AddSpace<T> const &s)
    {
        return os << s.ref << ' ';
    }
};
template <typename... Types>
void print2(Types const &...args)
{
    (std::cout << ... << AddSpace(args)) << '\n';
}
int main()
{
    print(1, 2, 3, 4, "lalala");
    print1(1, 2, 3, 4, 5);
    print2(1, 2, 3, 4, 5);
}