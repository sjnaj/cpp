#include <type_traits>
#include <iostream>
template <typename T1, typename T2>
constexpr std::pair<typename std::decay_t<T1>, typename std::decay_t<T2>>//decay string literals or raw arrays
make_pair(T1 &&a, T2 &&b)
{
    return std::pair < typename std::decay_t<T1>, typename std::decay_t<T2>>(std::forward<T1>(a), std::forward<T2>(b));
}