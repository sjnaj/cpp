#include <type_traits>
// 不能指定返回值类型
template <typename T1, typename T2>
auto max(T1 a, T2 b)
{
    return b < a ? a : b;
}
// 指定返回值类型时需要先指定T1和T2
// template <typename T1, typename T2, typename RT = std::common_type_t<T1, T2>>
// RT max(T1 a, T2 b)
// {
//     return b < a ? a : b;
// }
template <typename RT, typename T1, typename T2>
RT max(T1 a, T2 b)
{
    return b < a ? a : b;
}
int main()
{
    auto a = ::max(7.2, 4);//call first  :://global namespace
    auto b = ::max<long double>(7.2, 4);//RT=long double
    // auto b=::max<long double>(7.2L,4);//ambiguous
    //  auto c = ::max<int>(4, 7.2);//ambiguous
}