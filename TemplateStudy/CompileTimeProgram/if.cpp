#include <iostream>
template <typename T, typename... Types>
void print(T const &firstArg, Types const &...args)
{
    std::cout << firstArg << '\n';
    if constexpr (sizeof...(args) > 0)
    {
        print(args...);
    }
}

template <typename T>
void foo(T t)
{
    if constexpr (std::is_integral_v<T>)
    {
        if (t > 0)
        {
            foo(t - 1);
        }
    }
    else
    {

        static_assert(false, "no_integral");
        static_assert(!std::is_integral_v<T>, "no integral");
    }
}