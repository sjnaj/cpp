#include <cstring>
#include <array>
template <typename T>
T const &max(T const &a, T const &b)
{
    return b < a ? a : b;
}

// char const *max(char const *a, char const *b)
// {
//     return std::strcmp(b, a) < 0 ? a : b;
// }

template <typename T>
T const &max(T const &a, T const &b, T const &c)
{
    return max(max(a, b), c);//returning reference to local temporary object if call second
}

int main()
{
    auto m1 = ::max(7, 42, 68);
    char const *s1 = "frederic";
    char const *s2 = "anica";
    char const *s3 = "lucas";
    auto m2 = ::max(s1, s2, s3);//segment fault if not comment out second
}