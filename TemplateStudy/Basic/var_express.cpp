#include <iostream>
#include <type_traits>
#include <array>
template <typename... Types>
void print(Types const &...args)
{
    (std::cout << ... << args) << std::endl;
}

template <typename... T>
void printDoubled(T const &...args)
{
    print((args + args)...);
}

template <typename... T>
void printAddOne(T const &...args)
{
    print((args + 1)...);
}

template <typename T1, typename... TN>
constexpr bool isHomogeneous(T1, TN...)
{
    return (std::is_same_v<T1, TN> && ...);
}

int main()
{
    printDoubled(1, 2, 3, 4, 5);
    printAddOne(1, 2, 3, 4, 5);

    std::cout << isHomogeneous("hello", " ", "world", "!");
    std::cout << isHomogeneous(1, 2, 2.5);
    
}
